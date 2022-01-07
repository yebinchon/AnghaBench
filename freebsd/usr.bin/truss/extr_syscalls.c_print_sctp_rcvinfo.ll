; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_rcvinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_rcvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_rcvinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"{sid=%u,\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ssn=%u,\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flgs=\00", align 1
@sysdecode_sctp_rcv_flags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c",ppid=%u,\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tsn=%u,\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cumtsn=%u,\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ctx=%u,\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"id=%u}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_rcvinfo*)* @print_sctp_rcvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sctp_rcvinfo(i32* %0, %struct.sctp_rcvinfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sctp_rcvinfo*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.sctp_rcvinfo* %1, %struct.sctp_rcvinfo** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fprintf(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  %17 = load i32, i32* @sysdecode_sctp_rcv_flags, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @print_mask_arg(i32 %17, i32* %18, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohl(i32 %26)
  %28 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.sctp_rcvinfo*, %struct.sctp_rcvinfo** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_rcvinfo, %struct.sctp_rcvinfo* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fprintf(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @print_mask_arg(i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
