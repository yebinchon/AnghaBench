; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_walktree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_walktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.pfr_kentry = type { %union.sockaddr_union, i32, i32, i32, i32 }
%union.sockaddr_union = type { i32 }
%struct.pfr_walktree = type { i32, %struct.TYPE_2__*, %struct.pfr_kentry*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i8*, i8*, i32 }
%struct.pfr_astats = type { i32 }

@pfrke_workq = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @pfr_walktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_walktree(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pfr_kentry*, align 8
  %7 = alloca %struct.pfr_walktree*, align 8
  %8 = alloca %struct.pfr_astats, align 4
  %9 = alloca %union.sockaddr_union, align 4
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %11 = bitcast %struct.radix_node* %10 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %11, %struct.pfr_kentry** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.pfr_walktree*
  store %struct.pfr_walktree* %13, %struct.pfr_walktree** %7, align 8
  %14 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %15 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %167 [
    i32 130, label %17
    i32 128, label %20
    i32 133, label %27
    i32 132, label %38
    i32 131, label %55
    i32 129, label %74
    i32 134, label %91
  ]

17:                                               ; preds = %2
  %18 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %19 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %18, i32 0, i32 4
  store i32 0, i32* %19, align 4
  br label %167

20:                                               ; preds = %2
  %21 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %22 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %167

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %2, %26
  %28 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %29 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %32 = load i32, i32* @pfrke_workq, align 4
  %33 = call i32 @SLIST_INSERT_HEAD(i32 %30, %struct.pfr_kentry* %31, i32 %32)
  %34 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %35 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %167

38:                                               ; preds = %2
  %39 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %40 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %46 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %49 = call i32 @pfr_copyout_addr(i32 %47, %struct.pfr_kentry* %48)
  %50 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %51 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %44, %38
  br label %167

55:                                               ; preds = %2
  %56 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %57 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = icmp sgt i32 %58, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %63 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %64 = call i32 @pfr_copyout_astats(%struct.pfr_astats* %8, %struct.pfr_kentry* %62, %struct.pfr_walktree* %63)
  %65 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %66 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bcopy(%struct.pfr_astats* %8, i32 %67, i32 4)
  %69 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %70 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %61, %55
  br label %167

74:                                               ; preds = %2
  %75 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %76 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %167

80:                                               ; preds = %74
  %81 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %82 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %88 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %89 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %88, i32 0, i32 2
  store %struct.pfr_kentry* %87, %struct.pfr_kentry** %89, align 8
  store i32 1, i32* %3, align 4
  br label %168

90:                                               ; preds = %80
  br label %167

91:                                               ; preds = %2
  %92 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %93 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AF_INET, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %128

97:                                               ; preds = %91
  %98 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %99 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = icmp sgt i32 %102, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %167

106:                                              ; preds = %97
  %107 = load i32, i32* @AF_INET, align 4
  %108 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %109 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pfr_prepare_network(%union.sockaddr_union* %9, i32 %107, i32 %110)
  %112 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %113 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %112, i32 0, i32 0
  %114 = load i32, i32* @AF_INET, align 4
  %115 = call i8** @SUNION2PF(%union.sockaddr_union* %113, i32 %114)
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %118 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  store i8* %116, i8** %120, align 8
  %121 = load i32, i32* @AF_INET, align 4
  %122 = call i8** @SUNION2PF(%union.sockaddr_union* %9, i32 %121)
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %125 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  store i8* %123, i8** %127, align 8
  br label %166

128:                                              ; preds = %91
  %129 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %130 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AF_INET6, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %128
  %135 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %136 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = icmp sgt i32 %139, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %167

143:                                              ; preds = %134
  %144 = load i32, i32* @AF_INET6, align 4
  %145 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %146 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pfr_prepare_network(%union.sockaddr_union* %9, i32 %144, i32 %147)
  %149 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %150 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %149, i32 0, i32 0
  %151 = load i32, i32* @AF_INET6, align 4
  %152 = call i8** @SUNION2PF(%union.sockaddr_union* %150, i32 %151)
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %155 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  store i8* %153, i8** %157, align 8
  %158 = load i32, i32* @AF_INET6, align 4
  %159 = call i8** @SUNION2PF(%union.sockaddr_union* %9, i32 %158)
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %162 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i8* %160, i8** %164, align 8
  br label %165

165:                                              ; preds = %143, %128
  br label %166

166:                                              ; preds = %165, %106
  br label %167

167:                                              ; preds = %2, %166, %142, %105, %90, %79, %73, %54, %27, %25, %17
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %86
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @SLIST_INSERT_HEAD(i32, %struct.pfr_kentry*, i32) #1

declare dso_local i32 @pfr_copyout_addr(i32, %struct.pfr_kentry*) #1

declare dso_local i32 @pfr_copyout_astats(%struct.pfr_astats*, %struct.pfr_kentry*, %struct.pfr_walktree*) #1

declare dso_local i32 @bcopy(%struct.pfr_astats*, i32, i32) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local i8** @SUNION2PF(%union.sockaddr_union*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
