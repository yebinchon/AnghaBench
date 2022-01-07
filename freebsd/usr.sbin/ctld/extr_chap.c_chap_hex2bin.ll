; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_chap.c_chap_hex2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_chap.c_chap_hex2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"malformed variable, should start with \220x\22 or \220b\22\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"malformed variable; doesn't contain anything but \220x\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"malformed variable, invalid char \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @chap_hex2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chap_hex2bin(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 1, i32* %11, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = call i64 @strncasecmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8**, i8*** %6, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = call i32 @chap_b642bin(i8* %21, i8** %22, i64* %23)
  store i32 %24, i32* %4, align 4
  br label %118

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i64 @strncasecmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

32:                                               ; preds = %25
  %33 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 2
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i8* @calloc(i64 %50, i32 1)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i64, i64* %14, align 8
  %58 = sub i64 %57, 1
  store i64 %58, i64* %13, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %110, %56
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @chap_hex2int(i8 signext %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @free(i8* %81)
  store i32 -1, i32* %4, align 4
  br label %118

83:                                               ; preds = %64
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp ult i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load i32, i32* %10, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %93, i8* %96, align 1
  store i32 0, i32* %11, align 4
  br label %109

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = shl i32 %98, 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = or i32 %104, %99
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %102, align 1
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %13, align 8
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %97, %91
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %8, align 4
  br label %61

113:                                              ; preds = %61
  %114 = load i8*, i8** %12, align 8
  %115 = load i8**, i8*** %6, align 8
  store i8* %114, i8** %115, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64*, i64** %7, align 8
  store i64 %116, i64* %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %73, %41, %30, %19
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chap_b642bin(i8*, i8**, i64*) #1

declare dso_local i32 @log_warnx(i8*, ...) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @chap_hex2int(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
