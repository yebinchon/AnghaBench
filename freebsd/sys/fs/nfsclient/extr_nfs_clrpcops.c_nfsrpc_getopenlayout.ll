; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_getopenlayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_getopenlayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfsclopen = type { i32 }
%struct.nfscldeleg = type { i32 }
%struct.ucred = type { i32 }
%struct.nfscllayout = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.nfsclflayout = type { i32 }
%struct.nfsclflayouthead = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.nfsclsession = type { i32 }

@NFSLAYOUT_FLEXFILE = common dso_local global i32 0, align 4
@NFSLAYOUT_NFSV4_1_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"nfsrpc_getopenlayout nfscl_getlayout lyp=%p\0A\00", align 1
@NFSX_STATEID = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"aft nfsrpc_openlayoutrpc laystat=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmount*, i32, i32*, i32, i32*, i32, i32, %struct.nfsclopen*, i32*, i32, %struct.nfscldeleg**, %struct.ucred*, i32*)* @nfsrpc_getopenlayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_getopenlayout(%struct.nfsmount* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.nfsclopen* %7, i32* %8, i32 %9, %struct.nfscldeleg** %10, %struct.ucred* %11, i32* %12) #0 {
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.nfsclopen*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.nfscldeleg**, align 8
  %25 = alloca %struct.ucred*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.nfscllayout*, align 8
  %28 = alloca %struct.nfsclflayout*, align 8
  %29 = alloca %struct.nfsclflayouthead, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_6__, align 8
  %39 = alloca %struct.nfsclsession*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store %struct.nfsclopen* %7, %struct.nfsclopen** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store %struct.nfscldeleg** %10, %struct.nfscldeleg*** %24, align 8
  store %struct.ucred* %11, %struct.ucred** %25, align 8
  store i32* %12, i32** %26, align 8
  store i32 0, i32* %30, align 4
  %40 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %41 = call i64 @NFSHASFLEXFILE(%struct.nfsmount* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %13
  %44 = load i32, i32* @NFSLAYOUT_FLEXFILE, align 4
  store i32 %44, i32* %36, align 4
  br label %47

45:                                               ; preds = %13
  %46 = load i32, i32* @NFSLAYOUT_NFSV4_1_FILES, align 4
  store i32 %46, i32* %36, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %49 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %19, align 4
  %53 = call %struct.nfscllayout* @nfscl_getlayout(i32 %50, i32* %51, i32 %52, i32 0, %struct.nfsclflayout** %28, i32* %33)
  store %struct.nfscllayout* %53, %struct.nfscllayout** %27, align 8
  %54 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %55 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.nfscllayout* %54)
  %56 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %57 = icmp eq %struct.nfscllayout* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %31, align 4
  br label %65

59:                                               ; preds = %47
  %60 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %61 = icmp ne %struct.nfsclflayout* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %31, align 4
  br label %64

63:                                               ; preds = %59
  store i32 2, i32* %31, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %67 = icmp eq %struct.nfscllayout* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load %struct.nfsclflayout*, %struct.nfsclflayout** %28, align 8
  %70 = icmp eq %struct.nfsclflayout* %69, null
  br i1 %70, label %71, label %153

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %33, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %153

74:                                               ; preds = %71
  %75 = call i32 @LIST_INIT(%struct.nfsclflayouthead* %29)
  %76 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %77 = call %struct.nfsclsession* @nfsmnt_mdssession(%struct.nfsmount* %76)
  store %struct.nfsclsession* %77, %struct.nfsclsession** %39, align 8
  %78 = load %struct.nfsclsession*, %struct.nfsclsession** %39, align 8
  %79 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NFSX_STATEID, align 4
  %82 = load i32, i32* @NFSX_UNSIGNED, align 4
  %83 = mul nsw i32 3, %82
  %84 = add nsw i32 %81, %83
  %85 = sub nsw i32 %80, %84
  store i32 %85, i32* %32, align 4
  %86 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %87 = icmp eq %struct.nfscllayout* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i32 1, i32* %35, align 4
  br label %122

89:                                               ; preds = %74
  store i32 0, i32* %35, align 4
  %90 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %91 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %93, i32* %94, align 8
  %95 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %96 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %105 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %114 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %89, %88
  %123 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i32*, i32** %18, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load %struct.nfsclopen*, %struct.nfsclopen** %21, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = load i32, i32* %23, align 4
  %133 = load %struct.nfscldeleg**, %struct.nfscldeleg*** %24, align 8
  %134 = load i32, i32* %35, align 4
  %135 = load i32, i32* %36, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load %struct.ucred*, %struct.ucred** %25, align 8
  %138 = load i32*, i32** %26, align 8
  %139 = call i32 @nfsrpc_openlayoutrpc(%struct.nfsmount* %123, i32 %124, i32* %125, i32 %126, i32* %127, i32 %128, i32 %129, %struct.nfsclopen* %130, i32* %131, i32 %132, %struct.nfscldeleg** %133, %struct.TYPE_6__* %38, i32 %134, i32 %135, i32 %136, i32* %34, %struct.nfsclflayouthead* %29, i32* %37, %struct.ucred* %137, i32* %138)
  store i32 %139, i32* %30, align 4
  %140 = load i32, i32* %37, align 4
  %141 = load i32, i32* %30, align 4
  %142 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32*, i32** %18, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %34, align 4
  %148 = load i32, i32* %36, align 4
  %149 = load i32, i32* %37, align 4
  %150 = load %struct.ucred*, %struct.ucred** %25, align 8
  %151 = load i32*, i32** %26, align 8
  %152 = call i32 @nfsrpc_layoutgetres(%struct.nfsmount* %143, i32 %144, i32* %145, i32 %146, %struct.TYPE_6__* %38, i32 %147, i32* null, %struct.nfscllayout** %27, %struct.nfsclflayouthead* %29, i32 %148, i32 %149, i32* %31, %struct.ucred* %150, i32* %151)
  store i32 %152, i32* %37, align 4
  br label %168

153:                                              ; preds = %71, %68
  %154 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load i32*, i32** %16, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load %struct.nfsclopen*, %struct.nfsclopen** %21, align 8
  %162 = load i32*, i32** %22, align 8
  %163 = load i32, i32* %23, align 4
  %164 = load %struct.nfscldeleg**, %struct.nfscldeleg*** %24, align 8
  %165 = load %struct.ucred*, %struct.ucred** %25, align 8
  %166 = load i32*, i32** %26, align 8
  %167 = call i32 @nfsrpc_openrpc(%struct.nfsmount* %154, i32 %155, i32* %156, i32 %157, i32* %158, i32 %159, i32 %160, %struct.nfsclopen* %161, i32* %162, i32 %163, %struct.nfscldeleg** %164, i32 0, i32 0, %struct.ucred* %165, i32* %166, i32 0, i32 0)
  store i32 %167, i32* %30, align 4
  br label %168

168:                                              ; preds = %153, %122
  %169 = load i32, i32* %31, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %173 = call i32 @nfscl_rellayout(%struct.nfscllayout* %172, i32 1)
  br label %181

174:                                              ; preds = %168
  %175 = load i32, i32* %31, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.nfscllayout*, %struct.nfscllayout** %27, align 8
  %179 = call i32 @nfscl_rellayout(%struct.nfscllayout* %178, i32 0)
  br label %180

180:                                              ; preds = %177, %174
  br label %181

181:                                              ; preds = %180, %171
  %182 = load i32, i32* %30, align 4
  ret i32 %182
}

declare dso_local i64 @NFSHASFLEXFILE(%struct.nfsmount*) #1

declare dso_local %struct.nfscllayout* @nfscl_getlayout(i32, i32*, i32, i32, %struct.nfsclflayout**, i32*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @LIST_INIT(%struct.nfsclflayouthead*) #1

declare dso_local %struct.nfsclsession* @nfsmnt_mdssession(%struct.nfsmount*) #1

declare dso_local i32 @nfsrpc_openlayoutrpc(%struct.nfsmount*, i32, i32*, i32, i32*, i32, i32, %struct.nfsclopen*, i32*, i32, %struct.nfscldeleg**, %struct.TYPE_6__*, i32, i32, i32, i32*, %struct.nfsclflayouthead*, i32*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_layoutgetres(%struct.nfsmount*, i32, i32*, i32, %struct.TYPE_6__*, i32, i32*, %struct.nfscllayout**, %struct.nfsclflayouthead*, i32, i32, i32*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_openrpc(%struct.nfsmount*, i32, i32*, i32, i32*, i32, i32, %struct.nfsclopen*, i32*, i32, %struct.nfscldeleg**, i32, i32, %struct.ucred*, i32*, i32, i32) #1

declare dso_local i32 @nfscl_rellayout(%struct.nfscllayout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
