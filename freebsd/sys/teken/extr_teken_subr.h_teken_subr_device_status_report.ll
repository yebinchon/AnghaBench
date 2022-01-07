; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_device_status_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_device_status_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.teken_subr_device_status_report.response = private unnamed_addr constant [19 x i8] c"\1B[?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @teken_subr_device_status_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_device_status_report(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [19 x i8], align 16
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [19 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.teken_subr_device_status_report.response, i32 0, i32 0), i64 19, i1 false)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = call i64 @teken_subr_do_cpr(i32* %8, i32 %9, i8* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, 3
  %21 = call i32 @teken_funcs_respond(i32* %17, i8* %18, i64 %20)
  br label %22

22:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @teken_subr_do_cpr(i32*, i32, i8*) #2

declare dso_local i32 @teken_funcs_respond(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
