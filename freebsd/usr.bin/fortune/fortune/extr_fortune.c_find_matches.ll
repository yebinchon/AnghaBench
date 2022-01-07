; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_find_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_find_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@File_list = common dso_local global i32 0, align 4
@Fort_len = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Maximum length is %d\0A\00", align 1
@Fortbuf = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Found_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_matches() #0 {
  %1 = load i32, i32* @File_list, align 4
  %2 = call i64 @maxlen_in_list(i32 %1)
  store i64 %2, i64* @Fort_len, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i64, i64* @Fort_len, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @DPRINTF(i32 2, i32 %5)
  %7 = load i64, i64* @Fort_len, align 8
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 10
  %10 = call i32 @do_malloc(i32 %9)
  store i32 %10, i32* @Fortbuf, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* @Found_one, align 4
  %12 = load i32, i32* @File_list, align 4
  %13 = call i32 @matches_in_list(i32 %12)
  %14 = load i32, i32* @Found_one, align 4
  ret i32 %14
}

declare dso_local i64 @maxlen_in_list(i32) #1

declare dso_local i32 @DPRINTF(i32, i32) #1

declare dso_local i32 @do_malloc(i32) #1

declare dso_local i32 @matches_in_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
