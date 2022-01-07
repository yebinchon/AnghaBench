; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rib_head = type { i32, %struct.radix_node* (i32, %struct.sockaddr*, i32*)* }
%struct.radix_node = type { i32 }
%struct.rtentry = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.sockaddr = type { i32 }

@RNF_ROOT = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_mpath_conflict(%struct.rib_head* %0, %struct.rtentry* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rib_head*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca %struct.rtentry*, align 8
  store %struct.rib_head* %0, %struct.rib_head** %5, align 8
  store %struct.rtentry* %1, %struct.rtentry** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %11 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %12 = bitcast %struct.rtentry* %11 to %struct.radix_node*
  store %struct.radix_node* %12, %struct.radix_node** %8, align 8
  %13 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %14 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %13, i32 0, i32 1
  %15 = load %struct.radix_node* (i32, %struct.sockaddr*, i32*)*, %struct.radix_node* (i32, %struct.sockaddr*, i32*)** %14, align 8
  %16 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %17 = call i32 @rt_key(%struct.rtentry* %16)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %20 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %19, i32 0, i32 0
  %21 = call %struct.radix_node* %15(i32 %17, %struct.sockaddr* %18, i32* %20)
  store %struct.radix_node* %21, %struct.radix_node** %9, align 8
  %22 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %23 = icmp ne %struct.radix_node* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %26 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RNF_ROOT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %3
  store i32 0, i32* %4, align 4
  br label %121

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %116, %32
  %34 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %35 = bitcast %struct.radix_node* %34 to %struct.rtentry*
  store %struct.rtentry* %35, %struct.rtentry** %10, align 8
  %36 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %37 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %38 = icmp eq %struct.radix_node* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %116

40:                                               ; preds = %33
  %41 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %42 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_LINK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %40
  %49 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %50 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %57 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %55, %62
  br i1 %63, label %84, label %64

64:                                               ; preds = %48
  %65 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %66 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %71 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %76 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @bcmp(%struct.TYPE_5__* %69, %struct.TYPE_5__* %74, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %64, %48
  br label %116

85:                                               ; preds = %64
  br label %114

86:                                               ; preds = %40
  %87 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %88 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %93 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %91, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %86
  %99 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %100 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %103 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %106 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @bcmp(%struct.TYPE_5__* %101, %struct.TYPE_5__* %104, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98, %86
  br label %116

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i32, i32* @EEXIST, align 4
  store i32 %115, i32* %4, align 4
  br label %121

116:                                              ; preds = %112, %84, %39
  %117 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %118 = call %struct.radix_node* @rn_mpath_next(%struct.radix_node* %117)
  store %struct.radix_node* %118, %struct.radix_node** %9, align 8
  %119 = icmp ne %struct.radix_node* %118, null
  br i1 %119, label %33, label %120

120:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %114, %31
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i64 @bcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i64) #1

declare dso_local %struct.radix_node* @rn_mpath_next(%struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
