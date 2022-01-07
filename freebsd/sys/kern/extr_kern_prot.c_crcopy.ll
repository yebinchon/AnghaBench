; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"crcopy of shared ucred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crcopy(%struct.ucred* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.ucred*, align 8
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %5 = load %struct.ucred*, %struct.ucred** %3, align 8
  %6 = getelementptr inbounds %struct.ucred, %struct.ucred* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ucred*, %struct.ucred** %4, align 8
  %12 = getelementptr inbounds %struct.ucred, %struct.ucred* %11, i32 0, i32 7
  %13 = load %struct.ucred*, %struct.ucred** %3, align 8
  %14 = getelementptr inbounds %struct.ucred, %struct.ucred* %13, i32 0, i32 7
  %15 = load %struct.ucred*, %struct.ucred** %4, align 8
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %15, i32 0, i32 8
  %17 = ptrtoint i32* %16 to i64
  %18 = load %struct.ucred*, %struct.ucred** %4, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 7
  %20 = ptrtoint i32* %19 to i64
  %21 = sub nsw i64 %17, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @bcopy(i32* %12, i32* %14, i32 %22)
  %24 = load %struct.ucred*, %struct.ucred** %3, align 8
  %25 = load %struct.ucred*, %struct.ucred** %4, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ucred*, %struct.ucred** %4, align 8
  %29 = getelementptr inbounds %struct.ucred, %struct.ucred* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @crsetgroups(%struct.ucred* %24, i32 %27, i32 %30)
  %32 = load %struct.ucred*, %struct.ucred** %3, align 8
  %33 = getelementptr inbounds %struct.ucred, %struct.ucred* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @uihold(i32 %34)
  %36 = load %struct.ucred*, %struct.ucred** %3, align 8
  %37 = getelementptr inbounds %struct.ucred, %struct.ucred* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @uihold(i32 %38)
  %40 = load %struct.ucred*, %struct.ucred** %3, align 8
  %41 = getelementptr inbounds %struct.ucred, %struct.ucred* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @prison_hold(i32 %42)
  %44 = load %struct.ucred*, %struct.ucred** %3, align 8
  %45 = getelementptr inbounds %struct.ucred, %struct.ucred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @loginclass_hold(i32 %46)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @crsetgroups(%struct.ucred*, i32, i32) #1

declare dso_local i32 @uihold(i32) #1

declare dso_local i32 @prison_hold(i32) #1

declare dso_local i32 @loginclass_hold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
