; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gre.c_gre_update_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gre.c_gre_update_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_softc = type { i32, i32, i64, i64 }
%struct.grehdr = type { i32, i32* }

@gre_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@GRE_ENABLE_CSUM = common dso_local global i32 0, align 4
@GRE_FLAGS_CP = common dso_local global i32 0, align 4
@GRE_FLAGS_KP = common dso_local global i32 0, align 4
@GRE_ENABLE_SEQ = common dso_local global i32 0, align 4
@GRE_FLAGS_SP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gre_update_hdr(%struct.gre_softc* %0, %struct.grehdr* %1) #0 {
  %3 = alloca %struct.gre_softc*, align 8
  %4 = alloca %struct.grehdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gre_softc* %0, %struct.gre_softc** %3, align 8
  store %struct.grehdr* %1, %struct.grehdr** %4, align 8
  %7 = load i32, i32* @SA_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @gre_ioctl_sx, i32 %7)
  store i32 0, i32* %6, align 4
  %9 = load %struct.grehdr*, %struct.grehdr** %4, align 8
  %10 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GRE_ENABLE_CSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @GRE_FLAGS_CP, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %23 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  store i32 0, i32* %28, align 4
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %32 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i32, i32* @GRE_FLAGS_KP, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %40 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %46 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @htonl(i64 %47)
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %52

52:                                               ; preds = %35, %30
  %53 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %54 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GRE_ENABLE_SEQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i32, i32* @GRE_FLAGS_SP, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %64 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  store i32 0, i32* %69, align 4
  br label %74

71:                                               ; preds = %52
  %72 = load %struct.gre_softc*, %struct.gre_softc** %3, align 8
  %73 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %59
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @htons(i32 %75)
  %77 = load %struct.grehdr*, %struct.grehdr** %4, align 8
  %78 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
