; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_prinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_prinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_prinfo = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"{pol=\00", align 1
@sysdecode_sctp_pr_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c",val=%u}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_prinfo*)* @print_sctp_prinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sctp_prinfo(i32* %0, %struct.sctp_prinfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sctp_prinfo*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.sctp_prinfo* %1, %struct.sctp_prinfo** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %5)
  %7 = load i32, i32* @sysdecode_sctp_pr_policy, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.sctp_prinfo*, %struct.sctp_prinfo** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_prinfo, %struct.sctp_prinfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @print_integer_arg(i32 %7, i32* %8, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.sctp_prinfo*, %struct.sctp_prinfo** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_prinfo, %struct.sctp_prinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @print_integer_arg(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
