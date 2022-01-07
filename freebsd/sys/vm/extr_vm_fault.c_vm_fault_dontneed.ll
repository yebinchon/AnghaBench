; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_dontneed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_dontneed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faultstate = type { %struct.TYPE_19__*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@OBJ_FICTITIOUS = common dso_local global i32 0, align 4
@OBJ_UNMANAGED = common dso_local global i32 0, align 4
@VM_FAULT_DONTNEED_MIN = common dso_local global i64 0, align 8
@MAXPAGESIZES = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i64* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@MADV_DONTNEED = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.faultstate*, i64, i32)* @vm_fault_dontneed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_fault_dontneed(%struct.faultstate* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.faultstate*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.faultstate* %0, %struct.faultstate** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.faultstate*, %struct.faultstate** %4, align 8
  %18 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %17, i32 0, i32 3
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %9, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %21 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_21__* %20)
  %22 = load %struct.faultstate*, %struct.faultstate** %4, align 8
  %23 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %8, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %27 = icmp ne %struct.TYPE_21__* %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = call i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_21__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %34 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_21__* %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_21__* %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %38 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_21__* %37)
  br label %39

39:                                               ; preds = %32, %28
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OBJ_FICTITIOUS, align 4
  %45 = load i32, i32* @OBJ_UNMANAGED, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %173

49:                                               ; preds = %40
  %50 = load i64, i64* @VM_FAULT_DONTNEED_MIN, align 8
  store i64 %50, i64* %16, align 8
  %51 = load i32, i32* @MAXPAGESIZES, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i64, i64* %16, align 8
  %55 = load i64*, i64** @pagesizes, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64*, i64** @pagesizes, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %16, align 8
  br label %63

63:                                               ; preds = %59, %53, %49
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %16, align 8
  %66 = call i64 @rounddown2(i64 %64, i64 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %10, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @ptoa(i32 %73)
  %75 = sub nsw i64 %72, %74
  %76 = icmp sge i64 %69, %75
  br i1 %76, label %77, label %172

77:                                               ; preds = %63
  %78 = load %struct.faultstate*, %struct.faultstate** %4, align 8
  %79 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %78, i32 0, i32 1
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %172

85:                                               ; preds = %77
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = load i64, i64* %16, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %11, align 8
  br label %101

97:                                               ; preds = %85
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %16, align 8
  %100 = sub nsw i64 %98, %99
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.faultstate*, %struct.faultstate** %4, align 8
  %103 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* @MADV_DONTNEED, align 4
  %110 = call i32 @pmap_advise(i32 %106, i64 %107, i64 %108, i32 %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @OFF_TO_IDX(i32 %113)
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = call i64 @atop(i64 %119)
  %121 = add nsw i64 %114, %120
  store i64 %121, i64* %15, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call %struct.TYPE_20__* @vm_page_find_least(%struct.TYPE_21__* %122, i64 %123)
  store %struct.TYPE_20__* %124, %struct.TYPE_20__** %13, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @OFF_TO_IDX(i32 %127)
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = call i64 @atop(i64 %133)
  %135 = add nsw i64 %128, %134
  store i64 %135, i64* %14, align 8
  br label %136

136:                                              ; preds = %168, %158, %101
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %137, %struct.TYPE_20__** %12, align 8
  %138 = icmp ne %struct.TYPE_20__* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %14, align 8
  %144 = icmp slt i64 %142, %143
  br label %145

145:                                              ; preds = %139, %136
  %146 = phi i1 [ false, %136 ], [ %144, %139 ]
  br i1 %146, label %147, label %171

147:                                              ; preds = %145
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %149 = load i32, i32* @listq, align 4
  %150 = call %struct.TYPE_20__* @TAILQ_NEXT(%struct.TYPE_20__* %148, i32 %149)
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %13, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %152 = call i32 @vm_page_all_valid(%struct.TYPE_20__* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %156 = call i64 @vm_page_busied(%struct.TYPE_20__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %147
  br label %136

159:                                              ; preds = %154
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %161 = call i32 @vm_page_lock(%struct.TYPE_20__* %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %163 = call i32 @vm_page_inactive(%struct.TYPE_20__* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %167 = call i32 @vm_page_deactivate(%struct.TYPE_20__* %166)
  br label %168

168:                                              ; preds = %165, %159
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %170 = call i32 @vm_page_unlock(%struct.TYPE_20__* %169)
  br label %136

171:                                              ; preds = %145
  br label %172

172:                                              ; preds = %171, %77, %63
  br label %173

173:                                              ; preds = %172, %40
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %176 = icmp ne %struct.TYPE_21__* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %179 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_21__* %178)
  br label %180

180:                                              ; preds = %177, %173
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_21__*) #1

declare dso_local i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_21__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_21__*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_21__*) #1

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @pmap_advise(i32, i64, i64, i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local %struct.TYPE_20__* @vm_page_find_least(%struct.TYPE_21__*, i64) #1

declare dso_local %struct.TYPE_20__* @TAILQ_NEXT(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @vm_page_all_valid(%struct.TYPE_20__*) #1

declare dso_local i64 @vm_page_busied(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_inactive(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_deactivate(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
