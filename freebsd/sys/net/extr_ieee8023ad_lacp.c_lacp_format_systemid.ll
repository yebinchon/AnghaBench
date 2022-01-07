; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_format_systemid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_format_systemid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_systemid = type { i32, i32 }

@LACP_MACSTR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%04X,%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lacp_format_systemid(%struct.lacp_systemid* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.lacp_systemid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.lacp_systemid* %0, %struct.lacp_systemid** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @LACP_MACSTR_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.lacp_systemid*, %struct.lacp_systemid** %4, align 8
  %17 = getelementptr inbounds %struct.lacp_systemid, %struct.lacp_systemid* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohs(i32 %18)
  %20 = load %struct.lacp_systemid*, %struct.lacp_systemid** %4, align 8
  %21 = getelementptr inbounds %struct.lacp_systemid, %struct.lacp_systemid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = trunc i64 %11 to i32
  %24 = call i8* @lacp_format_mac(i32 %22, i8* %13, i32 %23)
  %25 = call i32 @snprintf(i8* %14, i64 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %27)
  ret i8* %26
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i8* @lacp_format_mac(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
