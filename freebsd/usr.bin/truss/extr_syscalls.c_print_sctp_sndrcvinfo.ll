; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_sndrcvinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_sndrcvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sndrcvinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"{sid=%u,\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ssn=%u,\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flgs=\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c",ppid=%u,\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ctx=%u,\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ttl=%u,\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"tsn=%u,\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"cumtsn=%u,\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"id=%u}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.sctp_sndrcvinfo*)* @print_sctp_sndrcvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sctp_sndrcvinfo(i32* %0, i32 %1, %struct.sctp_sndrcvinfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_sndrcvinfo*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sctp_sndrcvinfo* %2, %struct.sctp_sndrcvinfo** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %9 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @fprintf(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fprintf(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %25 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sysdecode_sctp_sinfo_flags(i32* %23, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohl(i32 %31)
  %33 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %20
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %39 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %44 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %36, %20
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %53 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %58 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fprintf(i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %50, %47
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %6, align 8
  %64 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fprintf(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @sysdecode_sctp_sinfo_flags(i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
