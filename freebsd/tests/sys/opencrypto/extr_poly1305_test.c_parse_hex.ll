; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/opencrypto/extr_poly1305_test.c_parse_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/opencrypto/extr_poly1305_test.c_parse_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poly1305_kat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c" :\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid hex byte '%.*s' in vector %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%hhx\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid hex byte '%s' in vector %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"got longer than expected value at %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"got short value at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.poly1305_kat*, i8*, i8*, i64)* @parse_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_hex(%struct.poly1305_kat* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.poly1305_kat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.poly1305_kat* %0, %struct.poly1305_kat** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %14, align 8
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 3)
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %10, align 8
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %4, %94
  %21 = load i8*, i8** %10, align 8
  %22 = call i8* @strpbrk(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %11, align 8
  br label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.poly1305_kat*, %struct.poly1305_kat** %5, align 8
  %40 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i64, i64, i8*, ...) @ATF_REQUIRE_EQ_MSG(i64 %35, i64 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %38, i32 %41)
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @memcpy(i8* %43, i8* %44, i32 2)
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %47 = load i8*, i8** %14, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %54 = load %struct.poly1305_kat*, %struct.poly1305_kat** %5, align 8
  %55 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i64, i64, i8*, ...) @ATF_REQUIRE_EQ_MSG(i64 %52, i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %56)
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ule i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.poly1305_kat*, %struct.poly1305_kat** %5, align 8
  %65 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ATF_REQUIRE_MSG(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i8*, i8** %9, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %34
  br label %95

71:                                               ; preds = %34
  %72 = load i8*, i8** %9, align 8
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %85, %71
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ true, %73 ], [ %82, %78 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  br label %73

88:                                               ; preds = %83
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %88
  br label %20

95:                                               ; preds = %93, %70
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.poly1305_kat*, %struct.poly1305_kat** %5, align 8
  %99 = getelementptr inbounds %struct.poly1305_kat, %struct.poly1305_kat* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i64, i64, i8*, ...) @ATF_REQUIRE_EQ_MSG(i64 %96, i64 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i64, i64, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
