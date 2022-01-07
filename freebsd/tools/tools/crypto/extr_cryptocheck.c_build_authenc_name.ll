; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_build_authenc_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_build_authenc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid cipher %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid hash %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alg* (i8*)* @build_authenc_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alg* @build_authenc_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alg*, align 8
  %4 = alloca %struct.alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 43)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = ptrtoint i8* %11 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = call i8* @strndup(i8* %10, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.alg* @find_alg(i8* %20)
  store %struct.alg* %21, %struct.alg** %3, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load %struct.alg*, %struct.alg** %3, align 8
  %25 = icmp eq %struct.alg* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.alg* @find_alg(i8* %30)
  store %struct.alg* %31, %struct.alg** %4, align 8
  %32 = load %struct.alg*, %struct.alg** %4, align 8
  %33 = icmp eq %struct.alg* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.alg*, %struct.alg** %3, align 8
  %39 = load %struct.alg*, %struct.alg** %4, align 8
  %40 = call %struct.alg* @build_authenc(%struct.alg* %38, %struct.alg* %39)
  ret %struct.alg* %40
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local %struct.alg* @find_alg(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.alg* @build_authenc(%struct.alg*, %struct.alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
