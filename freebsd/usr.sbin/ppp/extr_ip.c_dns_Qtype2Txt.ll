; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_dns_Qtype2Txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_dns_Qtype2Txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i8* }

@dns_Qtype2Txt.failure = internal global [6 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NS\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"MD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"MF\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CNAME\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SOA\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"MG\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"WKS\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"PTR\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"HINFO\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"MINFO\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"RP\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"AFSDB\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"X25\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ISDN\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"NSAP\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"NSAP-PTR\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"PX\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"GPOS\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"AXFR\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"MAILB\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"MAILA\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__const.dns_Qtype2Txt.qtxt = private unnamed_addr constant [32 x %struct.anon] [%struct.anon { i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i64 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i64 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i64 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i64 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i64 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i64 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i64 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon { i64 14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i64 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon { i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i64 17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i64 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i64 19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i64 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i64 21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon { i64 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon { i64 23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon { i64 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon { i64 25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i64 26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0) }, %struct.anon { i64 27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon { i64 28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0) }, %struct.anon { i64 252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0) }, %struct.anon { i64 253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0) }, %struct.anon { i64 254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0) }, %struct.anon { i64 255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0) }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @dns_Qtype2Txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dns_Qtype2Txt(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x %struct.anon], align 16
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = bitcast [32 x %struct.anon]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([32 x %struct.anon]* @__const.dns_Qtype2Txt.qtxt to i8*), i64 512, i1 false)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %9, 32
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %4, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 16
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [32 x %struct.anon], [32 x %struct.anon]* %4, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %32

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load i64, i64* %3, align 8
  %31 = call i8* @HexStr(i64 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @dns_Qtype2Txt.failure, i64 0, i64 0), i32 6)
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @HexStr(i64, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
