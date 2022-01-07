; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.snp_softc = type { i32, %struct.tty* }
%struct.tty = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@snp_hook = common dso_local global i32 0, align 4
@SNP_OUTPUT_BUFSIZE = common dso_local global i32 0, align 4
@NODEV = common dso_local global i8* null, align 8
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @snp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snp_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.snp_softc*, align 8
  %13 = alloca %struct.tty*, align 8
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = bitcast %struct.snp_softc** %12 to i8**
  %16 = call i32 @devfs_get_cdevpriv(i8** %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %6, align 4
  br label %117

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %115 [
    i32 128, label %23
    i32 130, label %61
    i32 129, label %78
    i32 131, label %95
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @SNP_LOCK()
  %25 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %26 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %25, i32 0, i32 1
  %27 = load %struct.tty*, %struct.tty** %26, align 8
  %28 = icmp ne %struct.tty* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 (...) @SNP_UNLOCK()
  %31 = load i32, i32* @EBUSY, align 4
  store i32 %31, i32* %6, align 4
  br label %117

32:                                               ; preds = %23
  %33 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %34 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %33, i32 0, i32 1
  %35 = load %struct.thread*, %struct.thread** %11, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %9, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %42 = call i32 @ttyhook_register(%struct.tty** %34, i32 %37, i32 %40, i32* @snp_hook, %struct.snp_softc* %41)
  store i32 %42, i32* %14, align 4
  %43 = call i32 (...) @SNP_UNLOCK()
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %117

48:                                               ; preds = %32
  %49 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %50 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %49, i32 0, i32 1
  %51 = load %struct.tty*, %struct.tty** %50, align 8
  store %struct.tty* %51, %struct.tty** %13, align 8
  %52 = load %struct.tty*, %struct.tty** %13, align 8
  %53 = call i32 @tty_lock(%struct.tty* %52)
  %54 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %55 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %54, i32 0, i32 0
  %56 = load %struct.tty*, %struct.tty** %13, align 8
  %57 = load i32, i32* @SNP_OUTPUT_BUFSIZE, align 4
  %58 = call i32 @ttyoutq_setsize(i32* %55, %struct.tty* %56, i32 %57)
  %59 = load %struct.tty*, %struct.tty** %13, align 8
  %60 = call i32 @tty_unlock(%struct.tty* %59)
  store i32 0, i32* %6, align 4
  br label %117

61:                                               ; preds = %21
  %62 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %63 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %62, i32 0, i32 1
  %64 = load %struct.tty*, %struct.tty** %63, align 8
  %65 = icmp eq %struct.tty* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i8*, i8** @NODEV, align 8
  %68 = load i64, i64* %9, align 8
  %69 = inttoptr i64 %68 to i8**
  store i8* %67, i8** %69, align 8
  br label %77

70:                                               ; preds = %61
  %71 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %72 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %71, i32 0, i32 1
  %73 = load %struct.tty*, %struct.tty** %72, align 8
  %74 = call i8* @tty_udev(%struct.tty* %73)
  %75 = load i64, i64* %9, align 8
  %76 = inttoptr i64 %75 to i8**
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %66
  store i32 0, i32* %6, align 4
  br label %117

78:                                               ; preds = %21
  %79 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %80 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %79, i32 0, i32 1
  %81 = load %struct.tty*, %struct.tty** %80, align 8
  %82 = icmp eq %struct.tty* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i64, i64* %9, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32 -1, i32* %85, align 4
  br label %94

86:                                               ; preds = %78
  %87 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %88 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %87, i32 0, i32 1
  %89 = load %struct.tty*, %struct.tty** %88, align 8
  %90 = call i8* @tty_udev(%struct.tty* %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i64, i64* %9, align 8
  %93 = inttoptr i64 %92 to i32*
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %83
  store i32 0, i32* %6, align 4
  br label %117

95:                                               ; preds = %21
  %96 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %97 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %96, i32 0, i32 1
  %98 = load %struct.tty*, %struct.tty** %97, align 8
  store %struct.tty* %98, %struct.tty** %13, align 8
  %99 = load %struct.tty*, %struct.tty** %13, align 8
  %100 = icmp ne %struct.tty* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.tty*, %struct.tty** %13, align 8
  %103 = call i32 @tty_lock(%struct.tty* %102)
  %104 = load %struct.snp_softc*, %struct.snp_softc** %12, align 8
  %105 = getelementptr inbounds %struct.snp_softc, %struct.snp_softc* %104, i32 0, i32 0
  %106 = call i32 @ttyoutq_bytesused(i32* %105)
  %107 = load i64, i64* %9, align 8
  %108 = inttoptr i64 %107 to i32*
  store i32 %106, i32* %108, align 4
  %109 = load %struct.tty*, %struct.tty** %13, align 8
  %110 = call i32 @tty_unlock(%struct.tty* %109)
  br label %114

111:                                              ; preds = %95
  %112 = load i64, i64* %9, align 8
  %113 = inttoptr i64 %112 to i32*
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %101
  store i32 0, i32* %6, align 4
  br label %117

115:                                              ; preds = %21
  %116 = load i32, i32* @ENOTTY, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %114, %94, %77, %48, %46, %29, %19
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @SNP_LOCK(...) #1

declare dso_local i32 @SNP_UNLOCK(...) #1

declare dso_local i32 @ttyhook_register(%struct.tty**, i32, i32, i32*, %struct.snp_softc*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttyoutq_setsize(i32*, %struct.tty*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i8* @tty_udev(%struct.tty*) #1

declare dso_local i32 @ttyoutq_bytesused(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
