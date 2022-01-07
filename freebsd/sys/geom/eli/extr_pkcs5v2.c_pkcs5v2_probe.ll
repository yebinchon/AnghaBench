; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_pkcs5v2.c_pkcs5v2_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_pkcs5v2.c_pkcs5v2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@G_ELI_SALTLEN = common dso_local global i32 0, align 4
@__const.pkcs5v2_probe.passphrase = private unnamed_addr constant [11 x i8] c"passphrase\00", align 1
@RUSAGE_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pkcs5v2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs5v2_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [11 x i8], align 1
  %7 = alloca %struct.rusage, align 8
  %8 = alloca %struct.rusage, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @G_ELI_SALTLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = bitcast [11 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.pkcs5v2_probe.passphrase, i32 0, i32 0), i64 11, i1 false)
  %18 = load i32, i32* @RUSAGE_SELF, align 4
  %19 = call i32 @getrusage(i32 %18, %struct.rusage* %7)
  %20 = mul nuw i64 4, %11
  %21 = trunc i64 %20 to i32
  %22 = mul nuw i64 4, %15
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @pkcs5v2_genkey(i32* %13, i32 %21, i32* %16, i32 %23, i8* %24, i32 %25)
  %27 = load i32, i32* @RUSAGE_SELF, align 4
  %28 = call i32 @getrusage(i32 %27, %struct.rusage* %8)
  %29 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 1000000
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getrusage(i32, %struct.rusage*) #3

declare dso_local i32 @pkcs5v2_genkey(i32*, i32, i32*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
