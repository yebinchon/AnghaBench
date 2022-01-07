; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_sanitize_session_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_sanitize_session_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session_conf = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ISCSI_NAME_LEN = common dso_local global i32 0, align 4
@ISCSI_ADDR_LEN = common dso_local global i32 0, align 4
@ISCSI_ALIAS_LEN = common dso_local global i32 0, align 4
@ISCSI_SECRET_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session_conf*)* @iscsi_sanitize_session_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sanitize_session_conf(%struct.iscsi_session_conf* %0) #0 {
  %2 = alloca %struct.iscsi_session_conf*, align 8
  store %struct.iscsi_session_conf* %0, %struct.iscsi_session_conf** %2, align 8
  %3 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @ISCSI_NAME_LEN, align 4
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  store i8 0, i8* %9, align 1
  %10 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %11 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @ISCSI_ADDR_LEN, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %18 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @ISCSI_ALIAS_LEN, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %25 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @ISCSI_NAME_LEN, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %32 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @ISCSI_ADDR_LEN, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %39 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @ISCSI_NAME_LEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %46 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @ISCSI_SECRET_LEN, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %53 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @ISCSI_NAME_LEN, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %2, align 8
  %60 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %59, i32 0, i32 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @ISCSI_SECRET_LEN, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
