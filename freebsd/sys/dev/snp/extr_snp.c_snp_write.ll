; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.snp_softc = type { %struct.tty* }
%struct.tty = type { i32 }

@SNP_INPUT_BUFSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @snp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snp_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snp_softc*, align 8
  %9 = alloca %struct.tty*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @SNP_INPUT_BUFSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = bitcast %struct.snp_softc** %8 to i8**
  %20 = call i32 @devfs_get_cdevpriv(i8** %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.snp_softc*, %struct.snp_softc** %8, align 8
  %27 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %26, i32 0, i32 0
  %28 = load %struct.tty*, %struct.tty** %27, align 8
  store %struct.tty* %28, %struct.tty** %9, align 8
  %29 = load %struct.tty*, %struct.tty** %9, align 8
  %30 = icmp eq %struct.tty* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.tty*, %struct.tty** %9, align 8
  %33 = call i64 @tty_gone(%struct.tty* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %75

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %66, %37
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = load %struct.uio*, %struct.uio** %6, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %16 to i32
  %48 = call i32 @imin(i64 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.uio*, %struct.uio** %6, align 8
  %51 = call i32 @uiomove(i8* %18, i32 %49, %struct.uio* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %75

56:                                               ; preds = %43
  %57 = load %struct.tty*, %struct.tty** %9, align 8
  %58 = call i32 @tty_lock(%struct.tty* %57)
  %59 = load %struct.tty*, %struct.tty** %9, align 8
  %60 = call i64 @tty_gone(%struct.tty* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.tty*, %struct.tty** %9, align 8
  %64 = call i32 @tty_unlock(%struct.tty* %63)
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %75

66:                                               ; preds = %56
  %67 = load %struct.tty*, %struct.tty** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ttydisc_rint_simple(%struct.tty* %67, i8* %18, i32 %68)
  %70 = load %struct.tty*, %struct.tty** %9, align 8
  %71 = call i32 @ttydisc_rint_done(%struct.tty* %70)
  %72 = load %struct.tty*, %struct.tty** %9, align 8
  %73 = call i32 @tty_unlock(%struct.tty* %72)
  br label %38

74:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %62, %54, %35, %23
  %76 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #2

declare dso_local i64 @tty_gone(%struct.tty*) #2

declare dso_local i32 @imin(i64, i32) #2

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #2

declare dso_local i32 @tty_lock(%struct.tty*) #2

declare dso_local i32 @tty_unlock(%struct.tty*) #2

declare dso_local i32 @ttydisc_rint_simple(%struct.tty*, i8*, i32) #2

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
