; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"usage: %s\00", align 1
@.str.1 = private unnamed_addr constant [1536 x i8] c"fsx [-dnqLOW] [-b opnum] [-c Prob] [-l flen] [-m start:end] [-o oplen] [-p progressinterval] [-r readbdy] [-s style] [-t truncbdy] [-w writebdy] [-D startingop] [-N numops] [-P dirpath] [-S seed] fname\0A\09-b opnum: beginning operation number (default 1)\0A\09-c P: 1 in P chance of file close+open at each op (default infinity)\0A\09-d: debug output for all operations\0A\09-i P: 1 in P chance of calling msync(MS_INVALIDATE) (default infinity)\0A\09-l flen: the upper bound on file size (default 262144)\0A\09-m startop:endop: monitor (print debug output) specified byte range (default 0:infinity)\0A\09-n: no verifications of file size\0A\09-o oplen: the upper bound on operation size (default 65536)\0A\09-p progressinterval: debug output at specified operation interval\0A\09-q: quieter operation\0A\09-r readbdy: 4096 would make reads page aligned (default 1)\0A\09-s style: 1 gives smaller truncates (default 0)\0A\09-t truncbdy: 4096 would make truncates page aligned (default 1)\0A\09-w writebdy: 4096 would make writes page aligned (default 1)\0A\09-D startingop: debug output starting at specified operation\0A\09-L: fsxLite - no file creations & no file size changes\0A\09-N numops: total # operations to do (default infinity)\0A\09-O: use oplen (see -o flag) for every op (default random)\0A\09-P dirpath: save .fsxlog and .fsxgood files in dirpath (default ./)\0A\09-S seed: for random # generator (default 1) 0 gets timestamp\0A\09-W: mapped write operations DISabled\0A\09-R: mapped read operations DISabled)\0A\09-U: msync after mapped write operations DISabled\0A\09fname: this filename is REQUIRED (no default)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1536 x i8], [1536 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @exit(i32 90) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

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
