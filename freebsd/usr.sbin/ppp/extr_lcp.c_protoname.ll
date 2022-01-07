; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_protoname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_protoname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@protoname.cftypes = internal constant [24 x i8*] [i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"MRU\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ACCMAP\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AUTHPROTO\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"QUALPROTO\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"MAGICNUM\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"RESERVED\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"PROTOCOMP\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ACFCOMP\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"FCSALT\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"NUMMODE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"MULTIPROC\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"CALLBACK\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CONTIME\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"COMPFRAME\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"NDE\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"MRRU\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SHORTSEQ\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ENDDISC\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"PROPRIETRY\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"DCEID\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"MULTIPP\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"LDBACP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @protoname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @protoname(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp ugt i64 %5, 24
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [24 x i8*], [24 x i8*]* @protoname.cftypes, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @HexStr(i32 %14, i32* null, i32 0)
  store i8* %15, i8** %2, align 8
  br label %21

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [24 x i8*], [24 x i8*]* @protoname.cftypes, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @HexStr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
