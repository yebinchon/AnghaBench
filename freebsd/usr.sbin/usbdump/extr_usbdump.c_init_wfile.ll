; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_init_wfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_init_wfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcap = type { i64 }
%struct.usbcap_filehdr = type { i32, i64, i32 }

@w_arg = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not open '%s' for write\00", align 1
@USBCAP_FILEHDR_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not write USB capture header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbcap*)* @init_wfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_wfile(%struct.usbcap* %0) #0 {
  %2 = alloca %struct.usbcap*, align 8
  %3 = alloca %struct.usbcap_filehdr, align 8
  %4 = alloca i32, align 4
  store %struct.usbcap* %0, %struct.usbcap** %2, align 8
  %5 = load i32, i32* @w_arg, align 4
  %6 = load i32, i32* @O_CREAT, align 4
  %7 = load i32, i32* @O_TRUNC, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @S_IRUSR, align 4
  %12 = load i32, i32* @S_IWUSR, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @open(i32 %5, i32 %10, i32 %13)
  %15 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %16 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %18 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = load i32, i32* @w_arg, align 4
  %24 = call i32 (i32, i8*, ...) @err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = call i32 @memset(%struct.usbcap_filehdr* %3, i32 0, i32 24)
  %27 = load i32, i32* @USBCAP_FILEHDR_MAGIC, align 4
  %28 = call i32 @htole32(i32 %27)
  %29 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 0
  store i32 3, i32* %31, align 8
  %32 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %33 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = bitcast %struct.usbcap_filehdr* %3 to i8*
  %36 = call i32 @write(i64 %34, i8* %35, i32 24)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 24
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 (i32, i8*, ...) @err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %25
  ret void
}

declare dso_local i64 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.usbcap_filehdr*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @write(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
