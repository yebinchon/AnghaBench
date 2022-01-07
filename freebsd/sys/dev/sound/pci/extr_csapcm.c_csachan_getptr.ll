; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csachan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csachan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_chinfo = type { i64, i32, i32, %struct.csa_info* }
%struct.csa_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@BA1_PBA = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S8 = common dso_local global i32 0, align 4
@BA1_CBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csachan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csachan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.csa_chinfo*, align 8
  %6 = alloca %struct.csa_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.csa_chinfo*
  store %struct.csa_chinfo* %10, %struct.csa_chinfo** %5, align 8
  %11 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %12 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %11, i32 0, i32 3
  %13 = load %struct.csa_info*, %struct.csa_info** %12, align 8
  store %struct.csa_info* %13, %struct.csa_info** %6, align 8
  %14 = load %struct.csa_info*, %struct.csa_info** %6, align 8
  %15 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %14, i32 0, i32 0
  store i32* %15, i32** %7, align 8
  %16 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %17 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCMDIR_PLAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @BA1_PBA, align 4
  %24 = call i32 @csa_readmem(i32* %22, i32 %23)
  %25 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %26 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sndbuf_getbufaddr(i32 %27)
  %29 = sub nsw i32 %24, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %31 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AFMT_U8, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %21
  %37 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %38 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AFMT_S8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %21
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %36
  br label %73

47:                                               ; preds = %2
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @BA1_CBA, align 4
  %50 = call i32 @csa_readmem(i32* %48, i32 %49)
  %51 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %52 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sndbuf_getbufaddr(i32 %53)
  %55 = sub nsw i32 %50, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %57 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AFMT_U8, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %47
  %63 = load %struct.csa_chinfo*, %struct.csa_chinfo** %5, align 8
  %64 = getelementptr inbounds %struct.csa_chinfo, %struct.csa_chinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AFMT_S8, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62, %47
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @csa_readmem(i32*, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
