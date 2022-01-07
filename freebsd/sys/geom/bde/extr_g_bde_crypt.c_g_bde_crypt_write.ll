; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_crypt_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_crypt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, %struct.g_bde_softc* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.g_bde_softc = type { i64 }

@G_BDE_SKEYLEN = common dso_local global i32 0, align 4
@DIR_ENCRYPT = common dso_local global i32 0, align 4
@G_BDE_SKEYBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_bde_crypt_write(%struct.g_bde_work* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.g_bde_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_bde_work* %0, %struct.g_bde_work** %2, align 8
  %12 = load i32, i32* @G_BDE_SKEYLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %17 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %16, i32 0, i32 6
  %18 = load %struct.g_bde_softc*, %struct.g_bde_softc** %17, align 8
  store %struct.g_bde_softc* %18, %struct.g_bde_softc** %5, align 8
  %19 = call i32 @AES_init(i32* %11)
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %85, %1
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %23 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %20
  %27 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %28 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %3, align 8
  %33 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %34 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %4, align 8
  %41 = mul nuw i64 4, %13
  %42 = trunc i64 %41 to i32
  %43 = call i32 @arc4rand(i32* %15, i32 %42, i32 0)
  %44 = load i32, i32* @DIR_ENCRYPT, align 4
  %45 = load i32, i32* @G_BDE_SKEYBITS, align 4
  %46 = call i32 @AES_makekey(i32* %10, i32 %44, i32 %45, i32* %15)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %50 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @AES_encrypt(i32* %11, i32* %10, i32* %47, i32* %48, i32 %52)
  %54 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %55 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %61 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @G_BDE_SKEYLEN, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32* %69, i32** %4, align 8
  %70 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %71 = load i32, i32* @DIR_ENCRYPT, align 4
  %72 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %73 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @g_bde_kkey(%struct.g_bde_softc* %70, i32* %10, i32 %71, i64 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = mul nuw i64 4, %13
  %80 = trunc i64 %79 to i32
  %81 = call i32 @AES_encrypt(i32* %11, i32* %10, i32* %15, i32* %78, i32 %80)
  %82 = mul nuw i64 4, %13
  %83 = trunc i64 %82 to i32
  %84 = call i32 @bzero(i32* %15, i32 %83)
  br label %85

85:                                               ; preds = %26
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %89 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %7, align 8
  br label %20

93:                                               ; preds = %20
  %94 = mul nuw i64 4, %13
  %95 = trunc i64 %94 to i32
  %96 = call i32 @bzero(i32* %15, i32 %95)
  %97 = call i32 @bzero(i32* %11, i32 4)
  %98 = call i32 @bzero(i32* %10, i32 4)
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AES_init(i32*) #2

declare dso_local i32 @arc4rand(i32*, i32, i32) #2

declare dso_local i32 @AES_makekey(i32*, i32, i32, i32*) #2

declare dso_local i32 @AES_encrypt(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @g_bde_kkey(%struct.g_bde_softc*, i32*, i32, i64) #2

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
