; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_controller = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i8*)*, i8* }

@SIIS_IS = common dso_local global i32 0, align 4
@SIIS_GCTL = common dso_local global i32 0, align 4
@SIIS_GCTL_MSIACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @siis_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.siis_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.siis_controller*
  store %struct.siis_controller* %8, %struct.siis_controller** %3, align 8
  %9 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %10 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SIIS_IS, align 4
  %13 = call i32 @ATA_INL(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %48, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %17 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SIIS_IS_PORT(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %28 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %38 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i8*)*, i32 (i8*)** %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 %44(i8* %45)
  br label %47

47:                                               ; preds = %36, %26, %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %53 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %59 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SIIS_GCTL, align 4
  %62 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %63 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SIIS_GCTL_MSIACK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ATA_OUTL(i32 %60, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %57, %51
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @SIIS_IS_PORT(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
