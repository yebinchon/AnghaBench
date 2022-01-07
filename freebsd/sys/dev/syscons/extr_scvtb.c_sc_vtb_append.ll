; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@VTB_RINGBUFFER = common dso_local global i64 0, align 8
@VTB_FRAMEBUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_vtb_append(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VTB_RINGBUFFER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %80

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %65, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = call i32 @imin(i32 %21, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VTB_FRAMEBUFFER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %20
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @sc_vtb_pointer(%struct.TYPE_6__* %36, i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @sc_vtb_pointer(%struct.TYPE_6__* %39, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @bcopy_fromio(i64 %38, i64 %43, i32 %47)
  br label %65

49:                                               ; preds = %20
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @sc_vtb_pointer(%struct.TYPE_6__* %50, i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @sc_vtb_pointer(%struct.TYPE_6__* %54, i32 %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @bcopy(i8* %53, i8* %59, i32 %63)
  br label %65

65:                                               ; preds = %49, %35
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @vtb_wrap(%struct.TYPE_6__* %72, i32 %75, i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %17

80:                                               ; preds = %15, %17
  ret void
}

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @bcopy_fromio(i64, i64, i32) #1

declare dso_local i64 @sc_vtb_pointer(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @vtb_wrap(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
