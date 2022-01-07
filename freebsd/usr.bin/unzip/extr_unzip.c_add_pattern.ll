; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_add_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i32 }
%struct.pattern = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"adding pattern '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pattern_list*, i8*)* @add_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pattern(%struct.pattern_list* %0, i8* %1) #0 {
  %3 = alloca %struct.pattern_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i64, align 8
  store %struct.pattern_list* %0, %struct.pattern_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 4, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = call %struct.pattern* @malloc(i32 %14)
  store %struct.pattern* %15, %struct.pattern** %5, align 8
  %16 = icmp eq %struct.pattern* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* @errno, align 4
  %19 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.pattern*, %struct.pattern** %5, align 8
  %22 = getelementptr inbounds %struct.pattern, %struct.pattern* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  %27 = call i32 @memcpy(i32 %23, i8* %24, i64 %26)
  %28 = load %struct.pattern_list*, %struct.pattern_list** %3, align 8
  %29 = load %struct.pattern*, %struct.pattern** %5, align 8
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @STAILQ_INSERT_TAIL(%struct.pattern_list* %28, %struct.pattern* %29, i32 %30)
  ret void
}

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.pattern* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.pattern_list*, %struct.pattern*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
