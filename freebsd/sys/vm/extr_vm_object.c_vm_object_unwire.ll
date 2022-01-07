; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__* }

@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vm_object_unwire: offset is not page aligned\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"vm_object_unwire: length is not a multiple of PAGE_SIZE\00", align 1
@OBJ_FICTITIOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"vm_object_unwire: missing page\00", align 1
@listq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"unwbo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_unwire(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PAGE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PAGE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @OBJ_FICTITIOUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %163

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @OFF_TO_IDX(i32 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @atop(i32 %41)
  %43 = add nsw i64 %40, %42
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %136, %37
  store i32 1, i32* %17, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_17__* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call %struct.TYPE_16__* @vm_page_find_least(%struct.TYPE_17__* %47, i64 %48)
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %11, align 8
  br label %50

50:                                               ; preds = %145, %44
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %148

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = icmp eq %struct.TYPE_16__* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %57, %54
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %9, align 8
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %99, %63
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @OFF_TO_IDX(i32 %69)
  %71 = load i64, i64* %15, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %15, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %9, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @KASSERT(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @OBJ_FICTITIOUS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %66
  br label %145

87:                                               ; preds = %66
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_17__* %96)
  br label %98

98:                                               ; preds = %93, %87
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call %struct.TYPE_16__* @vm_page_lookup(%struct.TYPE_17__* %100, i64 %101)
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %12, align 8
  %103 = icmp eq %struct.TYPE_16__* %102, null
  br i1 %103, label %66, label %104

104:                                              ; preds = %99
  br label %110

105:                                              ; preds = %57
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %12, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %108 = load i32, i32* @listq, align 4
  %109 = call %struct.TYPE_16__* @TAILQ_NEXT(%struct.TYPE_16__* %107, i32 %108)
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %11, align 8
  br label %110

110:                                              ; preds = %105, %104
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = call i64 @vm_page_trysbusy(%struct.TYPE_16__* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %9, align 8
  br label %116

116:                                              ; preds = %133, %114
  %117 = load i32, i32* %17, align 4
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %10, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = icmp ne %struct.TYPE_17__* %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %130 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_17__* %129)
  br label %131

131:                                              ; preds = %128, %119
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %9, align 8
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %17, align 4
  br label %116

136:                                              ; preds = %116
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %138 = call i32 @vm_page_busy_sleep(%struct.TYPE_16__* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %44

139:                                              ; preds = %110
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @vm_page_unwire(%struct.TYPE_16__* %140, i32 %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %144 = call i32 @vm_page_sunbusy(%struct.TYPE_16__* %143)
  br label %145

145:                                              ; preds = %139, %86
  %146 = load i64, i64* %14, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %14, align 8
  br label %50

148:                                              ; preds = %50
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %9, align 8
  br label %150

150:                                              ; preds = %160, %148
  %151 = load i32, i32* %17, align 4
  %152 = icmp sge i32 %151, 1
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  store %struct.TYPE_17__* %156, %struct.TYPE_17__** %10, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %158 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_17__* %157)
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %159, %struct.TYPE_17__** %9, align 8
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %17, align 4
  br label %150

163:                                              ; preds = %36, %150
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @vm_page_find_least(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_16__* @vm_page_lookup(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_16__* @TAILQ_NEXT(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @vm_page_trysbusy(%struct.TYPE_16__*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_busy_sleep(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @vm_page_unwire(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
