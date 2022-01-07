; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_utils.c_net_genmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_utils.c_net_genmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d-%d-%s\00", align 1
@vmname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_genmac(%struct.pci_devinst* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_devinst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca [80 x i8], align 16
  store %struct.pci_devinst* %0, %struct.pci_devinst** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %9 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %10 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %13 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** @vmname, align 8
  %16 = call i32 @snprintf(i8* %8, i32 80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i8* %15)
  %17 = call i32 @MD5Init(i32* %5)
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %20 = call i64 @strlen(i8* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 @MD5Update(i32* %5, i8* %18, i32 %21)
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %24 = call i32 @MD5Final(i8* %23, i32* %5)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 160, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 152, i32* %30, align 4
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = zext i8 %32 to i32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %42 = load i8, i8* %41, align 2
  %43 = zext i8 %42 to i32
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @MD5Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
