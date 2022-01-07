; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_spq = type { i32, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_6__*, %struct.ecore_spq* }
%struct.TYPE_6__ = type { i64 }
%struct.ecore_spq_entry = type { i64, i32, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_spq* null, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Got a NULL pointer\0A\00", align 1
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Recovery is in progress -> skip spq post [cmd %02x protocol %02x]\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_spq_post(%struct.ecore_hwfn* %0, %struct.ecore_spq_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_spq_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_spq*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_spq_entry* %1, %struct.ecore_spq_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = icmp ne %struct.ecore_hwfn* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = load %struct.ecore_spq*, %struct.ecore_spq** %16, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.ecore_spq*, %struct.ecore_spq** @OSAL_NULL, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi %struct.ecore_spq* [ %17, %14 ], [ %19, %18 ]
  store %struct.ecore_spq* %21, %struct.ecore_spq** %9, align 8
  store i32 1, i32* %10, align 4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %23 = icmp ne %struct.ecore_hwfn* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %149

26:                                               ; preds = %20
  %27 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %28 = icmp ne %struct.ecore_spq_entry* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %31 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %30, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %149

33:                                               ; preds = %26
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %43 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %41, i32 %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %52)
  %54 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %54, i32* %4, align 4
  br label %149

55:                                               ; preds = %33
  %56 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %57 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %56, i32 0, i32 0
  %58 = call i32 @OSAL_SPIN_LOCK(i32* %57)
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %60 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %61 = call i32 @ecore_spq_fill_entry(%struct.ecore_hwfn* %59, %struct.ecore_spq_entry* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %137

65:                                               ; preds = %55
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %67 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %68 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ecore_spq_add_entry(%struct.ecore_hwfn* %66, %struct.ecore_spq_entry* %67, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %137

75:                                               ; preds = %65
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = call i32 @ecore_spq_pend_post(%struct.ecore_hwfn* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %137

81:                                               ; preds = %75
  %82 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %83 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %82, i32 0, i32 0
  %84 = call i32 @OSAL_SPIN_UNLOCK(i32* %83)
  %85 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ECORE_SPQ_MODE_EBLOCK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %81
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %92 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %98 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %97, i32 0, i32 3
  %99 = icmp eq i32* %96, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ecore_spq_block(%struct.ecore_hwfn* %91, %struct.ecore_spq_entry* %92, i32* %93, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %103 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %106 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %105, i32 0, i32 3
  %107 = icmp eq i32* %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %90
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %110 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %113 = call i32 @OSAL_FREE(%struct.TYPE_6__* %111, %struct.ecore_spq_entry* %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %149

115:                                              ; preds = %90
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %125

119:                                              ; preds = %115
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %121 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %122 = call i32 @ecore_spq_return_entry(%struct.ecore_hwfn* %120, %struct.ecore_spq_entry* %121)
  br label %123

123:                                              ; preds = %119, %81
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %149

125:                                              ; preds = %118
  %126 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %127 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %126, i32 0, i32 0
  %128 = call i32 @OSAL_SPIN_LOCK(i32* %127)
  %129 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %130 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %129, i32 0, i32 1
  %131 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %132 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %131, i32 0, i32 2
  %133 = call i32 @OSAL_LIST_REMOVE_ENTRY(i32* %130, i32* %132)
  %134 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %135 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %134, i32 0, i32 1
  %136 = call i32 @ecore_chain_return_produced(i32* %135)
  br label %137

137:                                              ; preds = %125, %80, %74, %64
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %142 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %143 = call i32 @__ecore_spq_return_entry(%struct.ecore_hwfn* %141, %struct.ecore_spq_entry* %142)
  br label %144

144:                                              ; preds = %140, %137
  %145 = load %struct.ecore_spq*, %struct.ecore_spq** %9, align 8
  %146 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %145, i32 0, i32 0
  %147 = call i32 @OSAL_SPIN_UNLOCK(i32* %146)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %123, %108, %40, %29, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_spq_fill_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry*) #1

declare dso_local i32 @ecore_spq_add_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @ecore_spq_pend_post(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @ecore_spq_block(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32*, i32) #1

declare dso_local i32 @OSAL_FREE(%struct.TYPE_6__*, %struct.ecore_spq_entry*) #1

declare dso_local i32 @ecore_spq_return_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry*) #1

declare dso_local i32 @OSAL_LIST_REMOVE_ENTRY(i32*, i32*) #1

declare dso_local i32 @ecore_chain_return_produced(i32*) #1

declare dso_local i32 @__ecore_spq_return_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
