; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_find_and_replace.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_find_and_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, i8*)* @find_and_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_and_replace(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @ends_with(i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8* %31, i8** %8, align 8
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strstr(i8* %35, i8* %36)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %32, %19
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %85

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ugt i8* %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 47
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %85

55:                                               ; preds = %48, %42
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %85

70:                                               ; preds = %61, %55
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %72 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %10, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = call i32 @strbuf_splice(%struct.strbuf* %71, i32 %79, i32 %80, i8* %81, i32 %83)
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %70, %69, %54, %41
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
