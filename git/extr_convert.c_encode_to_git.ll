; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_encode_to_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_encode_to_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@CONV_WRITE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@default_encoding = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to encode '%s' from %s to %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Checking roundtrip encoding for %s...\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"reencoded source\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"encoding '%s' from %s to %s and back is not the same\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, %struct.strbuf*, i8*, i32)* @encode_to_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_to_git(i8* %0, i8* %1, i64 %2, %struct.strbuf* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.strbuf* %3, %struct.strbuf** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @CONV_WRITE_OBJECT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %6
  store i32 0, i32* %7, align 4
  br label %133

33:                                               ; preds = %29, %26
  %34 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %35 = icmp ne %struct.strbuf* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %133

40:                                               ; preds = %36, %33
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i64 @validate_encoding(i8* %41, i8* %42, i8* %43, i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %133

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @trace_encoding(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51, i8* %52, i64 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i8*, i8** @default_encoding, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i8* @reencode_string_len(i8* %55, i64 %56, i8* %57, i8* %58, i64* %15)
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %49
  %63 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i8* %63, i8** %17, align 8
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8*, i8** %17, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** @default_encoding, align 8
  %71 = call i32 @die(i8* %67, i8* %68, i8* %69, i8* %70)
  br label %78

72:                                               ; preds = %62
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** @default_encoding, align 8
  %77 = call i32 @error(i8* %73, i8* %74, i8* %75, i8* %76)
  store i32 0, i32* %7, align 4
  br label %133

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** @default_encoding, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @trace_encoding(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %80, i8* %81, i8* %82, i64 %83)
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %79
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 @check_roundtrip(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load i8*, i8** %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** @default_encoding, align 8
  %96 = call i8* @reencode_string_len(i8* %92, i64 %93, i8* %94, i8* %95, i64* %19)
  store i8* %96, i8** %18, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @trace_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = load i64, i64* %19, align 8
  %103 = call i32 @trace_encoding(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %99, i8* %100, i8* %101, i64 %102)
  %104 = load i8*, i8** %18, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %91
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %19, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @memcmp(i8* %111, i8* %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110, %106, %91
  %117 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i8* %117, i8** %20, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** @default_encoding, align 8
  %122 = call i32 @die(i8* %118, i8* %119, i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %116, %110
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @free(i8* %124)
  br label %126

126:                                              ; preds = %123, %87, %79
  %127 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %15, align 8
  %131 = add i64 %130, 1
  %132 = call i32 @strbuf_attach(%struct.strbuf* %127, i8* %128, i64 %129, i64 %131)
  store i32 1, i32* %7, align 4
  br label %133

133:                                              ; preds = %126, %72, %48, %39, %32
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i64 @validate_encoding(i8*, i8*, i8*, i64, i32) #1

declare dso_local i32 @trace_encoding(i8*, i8*, i8*, i8*, i64) #1

declare dso_local i8* @reencode_string_len(i8*, i64, i8*, i8*, i64*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @die(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @check_roundtrip(i8*) #1

declare dso_local i32 @trace_printf(i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
