; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_format_lagid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_format_lagid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_peerinfo = type { i32 }

@LACP_PARTNERSTR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[%s,%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lacp_format_lagid(%struct.lacp_peerinfo* %0, %struct.lacp_peerinfo* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.lacp_peerinfo*, align 8
  %6 = alloca %struct.lacp_peerinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.lacp_peerinfo* %0, %struct.lacp_peerinfo** %5, align 8
  store %struct.lacp_peerinfo* %1, %struct.lacp_peerinfo** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @LACP_PARTNERSTR_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @LACP_PARTNERSTR_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %5, align 8
  %24 = trunc i64 %14 to i32
  %25 = call i8* @lacp_format_partner(%struct.lacp_peerinfo* %23, i8* %16, i32 %24)
  %26 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %6, align 8
  %27 = trunc i64 %19 to i32
  %28 = call i8* @lacp_format_partner(%struct.lacp_peerinfo* %26, i8* %20, i32 %27)
  %29 = call i32 @snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i8* %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #2

declare dso_local i8* @lacp_format_partner(%struct.lacp_peerinfo*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
