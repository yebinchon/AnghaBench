; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@OBJT_VNODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@OBJPC_INVAL = common dso_local global i32 0, align 4
@VM_PAGER_PUT_SYNC = common dso_local global i32 0, align 4
@VM_PAGER_CLUSTER_OK = common dso_local global i32 0, align 4
@VM_PAGER_PUT_INVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@listq = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@vp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_page_clean(%struct.TYPE_17__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_17__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBJT_VNODE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = call i32 @vm_object_mightbedirty(%struct.TYPE_17__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %28, %4
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %5, align 4
  br label %191

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @OBJPC_SYNC, align 4
  %42 = load i32, i32* @OBJPC_INVAL, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @VM_PAGER_PUT_SYNC, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @VM_PAGER_CLUSTER_OK, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @OBJPC_INVAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @VM_PAGER_PUT_INVAL, align 4
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load i32, i32* %17, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %17, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @OFF_TO_IDX(i64 %63)
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  br label %76

71:                                               ; preds = %59
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @PAGE_MASK, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i64 @OFF_TO_IDX(i64 %74)
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i64 [ %70, %67 ], [ %75, %71 ]
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i1 [ false, %76 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %167, %132, %86
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %15, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call %struct.TYPE_16__* @vm_page_find_least(%struct.TYPE_17__* %94, i64 %95)
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %11, align 8
  br label %97

97:                                               ; preds = %180, %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = icmp ne %struct.TYPE_16__* %98, null
  br i1 %99, label %100, label %182

100:                                              ; preds = %97
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %182

108:                                              ; preds = %100
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %110 = load i32, i32* @listq, align 4
  %111 = call %struct.TYPE_16__* @TAILQ_NEXT(%struct.TYPE_16__* %109, i32 %110)
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %10, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = call i64 @vm_page_none_valid(%struct.TYPE_16__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %180

116:                                              ; preds = %108
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %118 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %119 = call i64 @vm_page_busy_acquire(%struct.TYPE_16__* %117, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @OBJPC_SYNC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %90

133:                                              ; preds = %127, %121
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call %struct.TYPE_16__* @vm_page_find_least(%struct.TYPE_17__* %134, i64 %135)
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %10, align 8
  br label %180

137:                                              ; preds = %116
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @vm_object_page_remove_write(%struct.TYPE_16__* %138, i32 %139, i32* %20)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %144 = call i32 @vm_page_xunbusy(%struct.TYPE_16__* %143)
  br label %180

145:                                              ; preds = %137
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @vm_object_page_collect_flush(%struct.TYPE_17__* %146, %struct.TYPE_16__* %147, i32 %148, i32 %149, i32* %20, i32* %18)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @FALSE, align 4
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %20, align 4
  br label %156

156:                                              ; preds = %153, %145
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @OBJPC_SYNC, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %90

168:                                              ; preds = %162, %156
  %169 = load i32, i32* %16, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  store i32 1, i32* %16, align 4
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %20, align 4
  br label %173

173:                                              ; preds = %171, %168
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = call %struct.TYPE_16__* @vm_page_find_least(%struct.TYPE_17__* %174, i64 %178)
  store %struct.TYPE_16__* %179, %struct.TYPE_16__** %10, align 8
  br label %180

180:                                              ; preds = %173, %142, %133, %115
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %181, %struct.TYPE_16__** %11, align 8
  br label %97

182:                                              ; preds = %107, %97
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %182
  %190 = load i32, i32* %19, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %37
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_object_mightbedirty(%struct.TYPE_17__*) #1

declare dso_local i64 @OFF_TO_IDX(i64) #1

declare dso_local %struct.TYPE_16__* @vm_page_find_least(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_16__* @TAILQ_NEXT(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_16__*) #1

declare dso_local i64 @vm_page_busy_acquire(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vm_object_page_remove_write(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_page_collect_flush(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
