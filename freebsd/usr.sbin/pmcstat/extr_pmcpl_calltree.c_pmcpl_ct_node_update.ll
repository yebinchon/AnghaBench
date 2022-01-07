; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.pmcpl_ct_node = type { i32, %struct.pmcpl_ct_arc*, i32 }
%struct.pmcpl_ct_arc = type { i32, %struct.pmcpl_ct_node*, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@pmcpl_ct_callid = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_node*, %struct.pmcpl_ct_node*, i32, i32, i32)* @pmcpl_ct_node_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_node_update(%struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pmcpl_ct_node*, align 8
  %7 = alloca %struct.pmcpl_ct_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pmcpl_ct_arc*, align 8
  %12 = alloca i32, align 4
  store %struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node** %6, align 8
  store %struct.pmcpl_ct_node* %1, %struct.pmcpl_ct_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %14 = icmp ne %struct.pmcpl_ct_node* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %95, %5
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %20 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %17
  %24 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %25 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %24, i32 0, i32 1
  %26 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %26, i64 %28
  %30 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %29, i32 0, i32 1
  %31 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %30, align 8
  %32 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %7, align 8
  %33 = icmp eq %struct.pmcpl_ct_node* %31, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %23
  %35 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %36 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %35, i32 0, i32 1
  %37 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %37, i64 %39
  store %struct.pmcpl_ct_arc* %40, %struct.pmcpl_ct_arc** %11, align 8
  %41 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %42 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %41, i32 0, i32 3
  %43 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__* %42)
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %46 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, %44
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %34
  %57 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %58 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %57, i32 0, i32 2
  %59 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__* %58)
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcpl_ct_callid, i32 0, i32 0), align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %66 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sub i32 %64, %72
  %74 = icmp ugt i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %56
  %76 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %77 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %56
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcpl_ct_callid, i32 0, i32 0), align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %87 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %34
  br label %154

94:                                               ; preds = %23
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %17

98:                                               ; preds = %17
  %99 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %100 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %103 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %102, i32 0, i32 2
  %104 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %105 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %104, i32 0, i32 1
  %106 = call i32 @pmcpl_ct_arc_grow(i32 %101, i32* %103, %struct.pmcpl_ct_arc** %105)
  %107 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %108 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %107, i32 0, i32 1
  %109 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %108, align 8
  %110 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %111 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %109, i64 %113
  store %struct.pmcpl_ct_arc* %114, %struct.pmcpl_ct_arc** %11, align 8
  %115 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %116 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %115, i32 0, i32 3
  %117 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__* %116)
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %120 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %118, i32* %125, align 4
  %126 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %127 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %98
  %131 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %132 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %131, i32 0, i32 2
  %133 = call i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__* %132)
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmcpl_ct_callid, i32 0, i32 0), align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %140 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %138, i32* %145, align 4
  br label %146

146:                                              ; preds = %130, %98
  %147 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %7, align 8
  %148 = load %struct.pmcpl_ct_arc*, %struct.pmcpl_ct_arc** %11, align 8
  %149 = getelementptr inbounds %struct.pmcpl_ct_arc, %struct.pmcpl_ct_arc* %148, i32 0, i32 1
  store %struct.pmcpl_ct_node* %147, %struct.pmcpl_ct_node** %149, align 8
  %150 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %6, align 8
  %151 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %146, %93
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmcpl_ct_samples_grow(%struct.TYPE_3__*) #1

declare dso_local i32 @pmcpl_ct_arc_grow(i32, i32*, %struct.pmcpl_ct_arc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
