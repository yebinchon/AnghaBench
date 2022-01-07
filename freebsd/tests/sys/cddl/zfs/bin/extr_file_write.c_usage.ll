; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_file_write.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_file_write.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"file_write\00", align 1
@execname = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [187 x i8] c"Usage: %s [-v] -o {create,overwrite,append} -f file_name [-b block_size]\0A\09[-s offset] [-c write_count] [-d data]\0A\09where [data] equal to zero causes chars 0->%d to be repeated throughout\0A\00", align 1
@DATA_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i64, i64* @execname, align 8
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @basename(i8* %14)
  store i8* %15, i8** %1, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i8*, i8** %1, align 8
  %18 = load i32, i32* @DATA_RANGE, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @free(i8* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
