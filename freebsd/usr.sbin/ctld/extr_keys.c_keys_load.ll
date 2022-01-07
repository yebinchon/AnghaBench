; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_keys.c_keys_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_keys.c_keys_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keys = type { i8*, i32, i8**, i32** }
%struct.pdu = type { i32, i8* }

@.str = private unnamed_addr constant [41 x i8] c"protocol error: key not NULL-terminated\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@KEYS_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"too many keys received\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"malformed keys\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"key received: \22%s=%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keys_load(%struct.keys* %0, %struct.pdu* %1) #0 {
  %3 = alloca %struct.keys*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.keys* %0, %struct.keys** %3, align 8
  store %struct.pdu* %1, %struct.pdu** %4, align 8
  %8 = load %struct.pdu*, %struct.pdu** %4, align 8
  %9 = getelementptr inbounds %struct.pdu, %struct.pdu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %161

13:                                               ; preds = %2
  %14 = load %struct.pdu*, %struct.pdu** %4, align 8
  %15 = getelementptr inbounds %struct.pdu, %struct.pdu* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.pdu*, %struct.pdu** %4, align 8
  %18 = getelementptr inbounds %struct.pdu, %struct.pdu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %13
  %29 = load %struct.keys*, %struct.keys** %3, align 8
  %30 = getelementptr inbounds %struct.keys, %struct.keys* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.pdu*, %struct.pdu** %4, align 8
  %36 = getelementptr inbounds %struct.pdu, %struct.pdu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.keys*, %struct.keys** %3, align 8
  %39 = getelementptr inbounds %struct.keys, %struct.keys* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.keys*, %struct.keys** %3, align 8
  %41 = getelementptr inbounds %struct.keys, %struct.keys* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @malloc(i32 %42)
  %44 = load %struct.keys*, %struct.keys** %3, align 8
  %45 = getelementptr inbounds %struct.keys, %struct.keys* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.keys*, %struct.keys** %3, align 8
  %47 = getelementptr inbounds %struct.keys, %struct.keys* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %28
  %53 = load %struct.keys*, %struct.keys** %3, align 8
  %54 = getelementptr inbounds %struct.keys, %struct.keys* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.pdu*, %struct.pdu** %4, align 8
  %57 = getelementptr inbounds %struct.pdu, %struct.pdu* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.keys*, %struct.keys** %3, align 8
  %60 = getelementptr inbounds %struct.keys, %struct.keys* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i8* %55, i8* %58, i32 %61)
  %63 = load %struct.keys*, %struct.keys** %3, align 8
  %64 = getelementptr inbounds %struct.keys, %struct.keys* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %158, %52
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @KEYS_MAX, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @strlen(i8* %73)
  store i64 %74, i64* %7, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.keys*, %struct.keys** %3, align 8
  %77 = getelementptr inbounds %struct.keys, %struct.keys* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  %82 = load %struct.keys*, %struct.keys** %3, align 8
  %83 = getelementptr inbounds %struct.keys, %struct.keys* %82, i32 0, i32 2
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = call i32* @strsep(i8** %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.keys*, %struct.keys** %3, align 8
  %90 = getelementptr inbounds %struct.keys, %struct.keys* %89, i32 0, i32 3
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  store i32* %88, i32** %94, align 8
  %95 = load %struct.keys*, %struct.keys** %3, align 8
  %96 = getelementptr inbounds %struct.keys, %struct.keys* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %72
  %104 = load %struct.keys*, %struct.keys** %3, align 8
  %105 = getelementptr inbounds %struct.keys, %struct.keys* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %103, %72
  %113 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %103
  %115 = load %struct.keys*, %struct.keys** %3, align 8
  %116 = getelementptr inbounds %struct.keys, %struct.keys* %115, i32 0, i32 3
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.keys*, %struct.keys** %3, align 8
  %123 = getelementptr inbounds %struct.keys, %struct.keys* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @log_debugx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %121, i8* %128)
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 %131
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.keys*, %struct.keys** %3, align 8
  %136 = getelementptr inbounds %struct.keys, %struct.keys* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.keys*, %struct.keys** %3, align 8
  %139 = getelementptr inbounds %struct.keys, %struct.keys* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = icmp eq i8* %134, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %114
  br label %161

145:                                              ; preds = %114
  %146 = load i8*, i8** %6, align 8
  %147 = load %struct.keys*, %struct.keys** %3, align 8
  %148 = getelementptr inbounds %struct.keys, %struct.keys* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.keys*, %struct.keys** %3, align 8
  %151 = getelementptr inbounds %struct.keys, %struct.keys* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = icmp ult i8* %146, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  br label %158

158:                                              ; preds = %145
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %66

161:                                              ; preds = %12, %144
  ret void
}

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @strsep(i8**, i8*) #1

declare dso_local i32 @log_debugx(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
