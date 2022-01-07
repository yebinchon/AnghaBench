; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_crypt_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_crypt_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { i64, %struct.TYPE_2__*, %struct.g_bde_softc* }
%struct.TYPE_2__ = type { i64* }
%struct.g_bde_softc = type { i64 }

@G_BDE_SKEYLEN = common dso_local global i32 0, align 4
@DIR_ENCRYPT = common dso_local global i32 0, align 4
@G_BDE_SKEYBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_bde_crypt_delete(%struct.g_bde_work* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca %struct.g_bde_softc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_bde_work* %0, %struct.g_bde_work** %2, align 8
  %10 = load i32, i32* @G_BDE_SKEYLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %15 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %14, i32 0, i32 2
  %16 = load %struct.g_bde_softc*, %struct.g_bde_softc** %15, align 8
  store %struct.g_bde_softc* %16, %struct.g_bde_softc** %3, align 8
  %17 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %18 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %4, align 8
  %22 = call i32 @AES_init(i32* %9)
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %54, %1
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %26 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load i64*, i64** %4, align 8
  %31 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %32 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @arc4rand(i64* %30, i32 %34, i32 0)
  %36 = mul nuw i64 8, %11
  %37 = trunc i64 %36 to i32
  %38 = call i32 @arc4rand(i64* %13, i32 %37, i32 0)
  %39 = load i32, i32* @DIR_ENCRYPT, align 4
  %40 = load i32, i32* @G_BDE_SKEYBITS, align 4
  %41 = call i32 @AES_makekey(i32* %8, i32 %39, i32 %40, i64* %13)
  %42 = load i64*, i64** %4, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %45 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @AES_encrypt(i32* %9, i32* %8, i64* %42, i64* %43, i32 %47)
  %49 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %50 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %51
  store i64* %53, i64** %4, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %56 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %23

60:                                               ; preds = %23
  %61 = call i32 @arc4rand(i64* %5, i32 8, i32 1)
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AES_init(i32*) #2

declare dso_local i32 @arc4rand(i64*, i32, i32) #2

declare dso_local i32 @AES_makekey(i32*, i32, i32, i64*) #2

declare dso_local i32 @AES_encrypt(i32*, i32*, i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
