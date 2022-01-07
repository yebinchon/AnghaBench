; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_decrypt_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_decrypt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i32, i32 }

@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G_BDE_MAXKEYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_bde_decrypt_lock(%struct.g_bde_softc* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_bde_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [16 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.g_bde_softc*, %struct.g_bde_softc** %8, align 8
  %21 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %24 = call i32 @bcopy(i32* %19, i32 %22, i32 %23)
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %26 = call i32 @bzero(i32* %25, i32 64)
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %6
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @bcmp(i32* %30, i32* %31, i32 64)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.g_bde_softc*, %struct.g_bde_softc** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @g_bde_decrypt_lockx(%struct.g_bde_softc* %35, i32* %36, i32 %37, i32 %38, i32* %39)
  store i32 %40, i32* %7, align 4
  br label %93

41:                                               ; preds = %29, %6
  %42 = load %struct.g_bde_softc*, %struct.g_bde_softc** %8, align 8
  %43 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32* @g_read_data(i32 %44, i32 0, i32 %45, i32* %16)
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %93

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %86, %51
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load %struct.g_bde_softc*, %struct.g_bde_softc** %8, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %18, align 4
  %61 = mul nsw i32 %60, 16
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @g_bde_decrypt_lockx(%struct.g_bde_softc* %58, i32* %63, i32 %64, i32 %65, i32* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %57
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %16, align 4
  br label %89

76:                                               ; preds = %70
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @EINVAL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %83, %79, %76
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %53

89:                                               ; preds = %74, %53
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @g_free(i32* %90)
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %49, %34
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @g_bde_decrypt_lockx(%struct.g_bde_softc*, i32*, i32, i32, i32*) #1

declare dso_local i32* @g_read_data(i32, i32, i32, i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
