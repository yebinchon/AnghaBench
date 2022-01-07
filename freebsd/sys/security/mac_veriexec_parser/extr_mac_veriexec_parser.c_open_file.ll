; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nameidata*)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file(i8* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %8 = load i32, i32* @FREAD, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @pwd_ensure_dirs()
  %10 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %11 = load i32, i32* @LOOKUP, align 4
  %12 = load i32, i32* @UIO_SYSSPACE, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @curthread, align 4
  %15 = call i32 @NDINIT(%struct.nameidata* %10, i32 %11, i32 0, i32 %12, i8* %13, i32 %14)
  %16 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %17 = call i32 @vn_open(%struct.nameidata* %16, i32* %6, i32 0, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %19 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %20 = call i32 @NDFREE(%struct.nameidata* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @pwd_ensure_dirs(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
