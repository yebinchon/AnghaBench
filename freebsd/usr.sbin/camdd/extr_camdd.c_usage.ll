; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1372 x i8] c"usage:  camdd <-i|-o pass=pass0,bs=1M,offset=1M,depth=4>\0A              <-i|-o file=/tmp/file,bs=512K,offset=1M>\0A              <-i|-o file=/dev/da0,bs=512K,offset=1M>\0A              <-i|-o file=/dev/nsa0,bs=512K>\0A              [-C retry_count][-E][-m max_io_amt][-t timeout_secs][-v][-h]\0AOption description\0A-i <arg=val>  Specify input device/file and parameters\0A-o <arg=val>  Specify output device/file and parameters\0AInput and Output parameters\0Apass=name     Specify a pass(4) device like pass0 or /dev/pass0\0Afile=name     Specify a file or device, /tmp/foo, /dev/da0, /dev/null\0A              or - for stdin/stdout\0Abs=blocksize  Specify blocksize in bytes, or using K, M, G, etc. suffix\0Aoffset=len    Specify starting offset in bytes or using K, M, G suffix\0A              NOTE: offset cannot be specified on tapes, pipes, stdin/out\0Adepth=N       Specify a numeric queue depth.  This only applies to pass(4)\0Amcs=N         Specify a minimum cmd size for pass(4) read/write commands\0AOptional arguments\0A-C retry_cnt  Specify a retry count for pass(4) devices\0A-E            Enable CAM error recovery for pass(4) devices\0A-m max_io     Specify the maximum amount to be transferred in bytes or\0A              using K, G, M, etc. suffixes\0A-t timeout    Specify the I/O timeout to use with pass(4) devices\0A-v            Enable verbose error recovery\0A-h            Print this message\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1372 x i8], [1372 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
