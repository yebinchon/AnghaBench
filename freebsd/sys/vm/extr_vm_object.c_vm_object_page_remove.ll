; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i64 }
%struct.TYPE_22__ = type { i64, i32, i64 }

@OBJ_UNMANAGED = common dso_local global i32 0, align 4
@OBJPR_CLEANONLY = common dso_local global i32 0, align 4
@OBJPR_NOTMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vm_object_page_remove: illegal options for object %p\00", align 1
@listq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vmopar\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"vm_object_page_remove: page %p is fictitious\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_page_remove(%struct.TYPE_23__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OBJ_UNMANAGED, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @OBJPR_CLEANONLY, align 4
  %22 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %19, %4
  %28 = phi i1 [ true, %4 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %31 = bitcast %struct.TYPE_23__* %30 to i8*
  %32 = call i32 @KASSERT(i32 %29, i8* %31)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %168

38:                                               ; preds = %27
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = call i32 @vm_object_pip_add(%struct.TYPE_23__* %39, i32 1)
  br label %41

41:                                               ; preds = %68, %38
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call %struct.TYPE_22__* @vm_page_find_least(%struct.TYPE_23__* %42, i64 %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %9, align 8
  br label %45

45:                                               ; preds = %163, %41
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = icmp ne %struct.TYPE_22__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, 0
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i1 [ true, %48 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i1 [ false, %45 ], [ %58, %57 ]
  br i1 %60, label %61, label %165

61:                                               ; preds = %59
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %63 = load i32, i32* @listq, align 4
  %64 = call %struct.TYPE_22__* @TAILQ_NEXT(%struct.TYPE_22__* %62, i32 %63)
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %10, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %66 = call i64 @vm_page_tryxbusy(%struct.TYPE_22__* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = call i32 @vm_page_sleep_if_busy(%struct.TYPE_22__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %41

71:                                               ; preds = %61
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = call i64 @vm_page_wired(%struct.TYPE_22__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %159, %135, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %88 = call i32 @pmap_remove_all(%struct.TYPE_22__* %87)
  br label %89

89:                                               ; preds = %86, %81, %76
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @OBJPR_CLEANONLY, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = call i32 @vm_page_invalid(%struct.TYPE_22__* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = call i32 @vm_page_undirty(%struct.TYPE_22__* %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %101 = call i32 @vm_page_xunbusy(%struct.TYPE_22__* %100)
  br label %163

102:                                              ; preds = %71
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PG_FICTITIOUS, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = bitcast %struct.TYPE_22__* %110 to i8*
  %112 = call i32 @KASSERT(i32 %109, i8* %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @OBJPR_CLEANONLY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %102
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = call i32 @vm_page_none_valid(%struct.TYPE_22__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %133 = call i32 @vm_page_try_remove_write(%struct.TYPE_22__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %76

136:                                              ; preds = %131, %126, %121
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %143 = call i32 @vm_page_xunbusy(%struct.TYPE_22__* %142)
  br label %163

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %117, %102
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @OBJPR_NOTMAPPED, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %157 = call i32 @vm_page_try_remove_all(%struct.TYPE_22__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  br label %76

160:                                              ; preds = %155, %150, %145
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %162 = call i32 @vm_page_free(%struct.TYPE_22__* %161)
  br label %163

163:                                              ; preds = %160, %141, %99
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %164, %struct.TYPE_22__** %9, align 8
  br label %45

165:                                              ; preds = %59
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = call i32 @vm_object_pip_wakeup(%struct.TYPE_23__* %166)
  br label %168

168:                                              ; preds = %165, %37
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_23__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_object_pip_add(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @vm_page_find_least(%struct.TYPE_23__*, i64) #1

declare dso_local %struct.TYPE_22__* @TAILQ_NEXT(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_sleep_if_busy(%struct.TYPE_22__*, i8*) #1

declare dso_local i64 @vm_page_wired(%struct.TYPE_22__*) #1

declare dso_local i32 @pmap_remove_all(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_invalid(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_undirty(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_none_valid(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_try_remove_write(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_try_remove_all(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_object_pip_wakeup(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
