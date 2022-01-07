; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_ins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@VTB_FRAMEBUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_vtb_ins(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %73

24:                                               ; preds = %5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VTB_FRAMEBUFFER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %31, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %34, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @bcopy_io(i64 %33, i64 %38, i32 %48)
  br label %72

50:                                               ; preds = %24
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %51, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %55, i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @bcopy(i8* %54, i8* %60, i32 %70)
  br label %72

72:                                               ; preds = %50, %30
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VTB_FRAMEBUFFER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @fillw_io(i32 %82, i64 %85, i32 %86)
  br label %98

88:                                               ; preds = %73
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %92, i32 %93)
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @fillw(i32 %91, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %79
  ret void
}

declare dso_local i32 @bcopy_io(i64, i64, i32) #1

declare dso_local i64 @sc_vtb_pointer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @fillw_io(i32, i64, i32) #1

declare dso_local i32 @fillw(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
