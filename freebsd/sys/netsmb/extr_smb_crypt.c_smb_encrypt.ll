; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_crypt.c_smb_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_crypt.c_smb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SMBTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@N8 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_encrypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @M_SMBTEMP, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call i32* @malloc(i32 35, i32 %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @bzero(i32* %13, i32 35)
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 14
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @strlen(i32* %20)
  %22 = call i32 @min(i32 14, i32 %21)
  %23 = call i32 @bcopy(i32* %18, i32* %19, i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** @N8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @smb_E(i32* %24, i32* %25, i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 7
  %30 = load i32*, i32** @N8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = call i32 @smb_E(i32* %29, i32* %30, i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @smb_E(i32* %34, i32* %35, i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = call i32 @smb_E(i32* %39, i32* %40, i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 14
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 16
  %49 = call i32 @smb_E(i32* %45, i32* %46, i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @M_SMBTEMP, align 4
  %52 = call i32 @free(i32* %50, i32 %51)
  ret i32 0
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @smb_E(i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
