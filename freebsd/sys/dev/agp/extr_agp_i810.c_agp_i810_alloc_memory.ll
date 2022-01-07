; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_alloc_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_alloc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.agp_i810_softc = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@CHIP_I810 = common dso_local global i64 0, align 8
@M_AGP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@am_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_memory* (i32, i32, i32)* @agp_i810_alloc_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_memory* @agp_i810_alloc_memory(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.agp_memory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.agp_i810_softc*, align 8
  %9 = alloca %struct.agp_memory*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.agp_i810_softc* @device_get_softc(i32 %11)
  store %struct.agp_i810_softc* %12, %struct.agp_i810_softc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %20 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %26 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18, %3
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %177

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %36 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_I810, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %177

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %48 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %177

52:                                               ; preds = %45
  br label %81

53:                                               ; preds = %31
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %62 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %177

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @M_AGP, align 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i32* @contigmalloc(i32 %67, i32 %68, i32 0, i32 0, i32 -1, i32 %69, i32 0)
  %71 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %72 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %74 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %177

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* @M_AGP, align 4
  %83 = load i32, i32* @M_WAITOK, align 4
  %84 = call %struct.agp_memory* @malloc(i32 48, i32 %82, i32 %83)
  store %struct.agp_memory* %84, %struct.agp_memory** %9, align 8
  %85 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %86 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = sext i32 %88 to i64
  %91 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %92 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %91, i32 0, i32 6
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %95 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %98 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %116

101:                                              ; preds = %81
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 2
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104, %101
  %109 = load i32, i32* @OBJT_DEFAULT, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @round_page(i32 %110)
  %112 = call i32 @atop(i32 %111)
  %113 = call i64 @vm_object_allocate(i32 %109, i32 %112)
  %114 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %115 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %114, i32 0, i32 5
  store i64 %113, i64* %115, align 8
  br label %119

116:                                              ; preds = %104, %81
  %117 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %118 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %108
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %156

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %122
  %127 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %128 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @VM_OBJECT_WLOCK(i64 %129)
  %131 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %132 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %135 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @vm_page_grab(i64 %133, i32 0, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %141 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @VM_OBJECT_WUNLOCK(i64 %142)
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @VM_PAGE_TO_PHYS(i32 %144)
  %146 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %147 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  br label %155

148:                                              ; preds = %122
  %149 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %150 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = call i64 @vtophys(i32* %151)
  %153 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %154 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %153, i32 0, i32 4
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %148, %126
  br label %159

156:                                              ; preds = %119
  %157 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %158 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %156, %155
  %160 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %161 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %163 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %165 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %168 = load i32, i32* @am_link, align 4
  %169 = call i32 @TAILQ_INSERT_TAIL(i32* %166, %struct.agp_memory* %167, i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %172 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  store %struct.agp_memory* %176, %struct.agp_memory** %4, align 8
  br label %177

177:                                              ; preds = %159, %77, %65, %51, %44, %30
  %178 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  ret %struct.agp_memory* %178
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.agp_memory* @malloc(i32, i32, i32) #1

declare dso_local i64 @vm_object_allocate(i32, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local i32 @vm_page_grab(i64, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @vtophys(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.agp_memory*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
