; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_crypt_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_crypt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { i64, i32, i64, i64, %struct.TYPE_2__*, %struct.g_bde_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.g_bde_softc = type { i32 }

@G_BDE_SKEYLEN = common dso_local global i32 0, align 4
@DIR_DECRYPT = common dso_local global i32 0, align 4
@G_BDE_SKEYBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_bde_crypt_read(%struct.g_bde_work* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca %struct.g_bde_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_bde_work* %0, %struct.g_bde_work** %2, align 8
  %11 = load i32, i32* @G_BDE_SKEYLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = call i32 @AES_init(i32* %10)
  %16 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %17 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %16, i32 0, i32 5
  %18 = load %struct.g_bde_softc*, %struct.g_bde_softc** %17, align 8
  store %struct.g_bde_softc* %18, %struct.g_bde_softc** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %69, %1
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %22 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %19
  %26 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %27 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %33 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @G_BDE_SKEYLEN, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %4, align 8
  %42 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %43 = load i32, i32* @DIR_DECRYPT, align 4
  %44 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %45 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @g_bde_kkey(%struct.g_bde_softc* %42, i32* %9, i32 %43, i64 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = mul nuw i64 4, %12
  %52 = trunc i64 %51 to i32
  %53 = call i32 @AES_decrypt(i32* %10, i32* %9, i32* %50, i32* %14, i32 %52)
  %54 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %55 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %4, align 8
  %60 = load i32, i32* @DIR_DECRYPT, align 4
  %61 = load i32, i32* @G_BDE_SKEYBITS, align 4
  %62 = call i32 @AES_makekey(i32* %9, i32 %60, i32 %61, i32* %14)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %66 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @AES_decrypt(i32* %10, i32* %9, i32* %63, i32* %64, i32 %67)
  br label %69

69:                                               ; preds = %25
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %73 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %19

78:                                               ; preds = %19
  %79 = mul nuw i64 4, %12
  %80 = trunc i64 %79 to i32
  %81 = call i32 @bzero(i32* %14, i32 %80)
  %82 = call i32 @bzero(i32* %10, i32 4)
  %83 = call i32 @bzero(i32* %9, i32 4)
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AES_init(i32*) #2

declare dso_local i32 @g_bde_kkey(%struct.g_bde_softc*, i32*, i32, i64) #2

declare dso_local i32 @AES_decrypt(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @AES_makekey(i32*, i32, i32, i32*) #2

declare dso_local i32 @bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
