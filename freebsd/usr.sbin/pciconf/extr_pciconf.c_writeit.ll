; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_writeit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_writeit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_io = type { i32, i8*, i8*, i32 }

@_PATH_DEVPCI = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PCIOCWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ioctl(PCIOCWRITE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @writeit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeit(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_io, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @getsel(i8* %11)
  %13 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %10, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strtoul(i8* %14, i8** null, i32 0)
  %16 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %10, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strtoul(i8* %19, i8** null, i32 0)
  %21 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %10, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @_PATH_DEVPCI, align 4
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = call i32 @open(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @_PATH_DEVPCI, align 4
  %29 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PCIOCWRITE, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.pci_io* %10)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @close(i32 %38)
  ret void
}

declare dso_local i32 @getsel(i8*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pci_io*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
