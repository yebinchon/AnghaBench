; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_icm.c_aes_gcm_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_xform_aes_icm.c_aes_gcm_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_icm_ctx = type { i32* }

@AESICM_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @aes_gcm_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gcm_reinit(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aes_icm_ctx*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @aes_icm_reinit(i64 %6, i32* %7)
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.aes_icm_ctx*
  store %struct.aes_icm_ctx* %10, %struct.aes_icm_ctx** %5, align 8
  %11 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @AESICM_BLOCKSIZE, align 4
  %15 = sub nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i32 @bzero(i32* %17, i32 4)
  %19 = load %struct.aes_icm_ctx*, %struct.aes_icm_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.aes_icm_ctx, %struct.aes_icm_ctx* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @AESICM_BLOCKSIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 2, i32* %25, align 4
  ret void
}

declare dso_local i32 @aes_icm_reinit(i64, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
