; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.executable*, i8*, i64, i64)* @append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append(%struct.executable* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.executable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.executable* %0, %struct.executable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.executable*, %struct.executable** %5, align 8
  %11 = getelementptr inbounds %struct.executable, %struct.executable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.executable*, %struct.executable** %5, align 8
  %14 = getelementptr inbounds %struct.executable, %struct.executable* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.executable*, %struct.executable** %5, align 8
  %17 = getelementptr inbounds %struct.executable, %struct.executable* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32* @realloc(i32* %15, i32 %24)
  %26 = load %struct.executable*, %struct.executable** %5, align 8
  %27 = getelementptr inbounds %struct.executable, %struct.executable* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.executable*, %struct.executable** %5, align 8
  %29 = getelementptr inbounds %struct.executable, %struct.executable* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %4
  %35 = load %struct.executable*, %struct.executable** %5, align 8
  %36 = getelementptr inbounds %struct.executable, %struct.executable* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.executable*, %struct.executable** %5, align 8
  %39 = getelementptr inbounds %struct.executable, %struct.executable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i32* %42, i8* %43, i64 %44)
  %46 = load %struct.executable*, %struct.executable** %5, align 8
  %47 = getelementptr inbounds %struct.executable, %struct.executable* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.executable*, %struct.executable** %5, align 8
  %50 = getelementptr inbounds %struct.executable, %struct.executable* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @memset(i32* %55, i32 0, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.executable*, %struct.executable** %5, align 8
  %62 = getelementptr inbounds %struct.executable, %struct.executable* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
