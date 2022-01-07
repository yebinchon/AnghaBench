; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_init_rfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_init_rfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcap = type { i64 }
%struct.usbcap_filehdr = type { i64, i32, i32 }

@r_arg = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not open '%s' for read\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not read USB capture file header\00", align 1
@USBCAP_FILEHDR_MAGIC = common dso_local global i64 0, align 8
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Invalid magic field(0x%08x) in USB capture file header.\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Invalid major version(%d) field in USB capture file header.\00", align 1
@uf_minor = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Invalid minor version(%d) field in USB capture file header.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbcap*)* @init_rfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rfile(%struct.usbcap* %0) #0 {
  %2 = alloca %struct.usbcap*, align 8
  %3 = alloca %struct.usbcap_filehdr, align 8
  %4 = alloca i32, align 4
  store %struct.usbcap* %0, %struct.usbcap** %2, align 8
  %5 = load i32, i32* @r_arg, align 4
  %6 = load i32, i32* @O_RDONLY, align 4
  %7 = call i64 @open(i32 %5, i32 %6)
  %8 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %9 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %11 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = load i32, i32* @r_arg, align 4
  %17 = call i32 (i32, i8*, ...) @err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.usbcap*, %struct.usbcap** %2, align 8
  %20 = getelementptr inbounds %struct.usbcap, %struct.usbcap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @read(i64 %21, %struct.usbcap_filehdr* %3, i32 16)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 (i32, i8*, ...) @err(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %18
  %30 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32toh(i32 %31)
  %33 = load i64, i64* @USBCAP_FILEHDR_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @EX_SOFTWARE, align 4
  %37 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32toh(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  %43 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @EX_SOFTWARE, align 4
  %48 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @errx(i32 %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @uf_minor, align 4
  %55 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @EX_SOFTWARE, align 4
  %64 = getelementptr inbounds %struct.usbcap_filehdr, %struct.usbcap_filehdr* %3, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @errx(i32 %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %58, %52
  ret void
}

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @read(i64, %struct.usbcap_filehdr*, i32) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
