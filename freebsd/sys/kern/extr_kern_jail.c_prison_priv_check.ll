; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_priv_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_priv_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PR_ALLOW_CHFLAGS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PR_ALLOW_MOUNT = common dso_local global i32 0, align 4
@PR_ALLOW_MLOCK = common dso_local global i32 0, align 4
@PR_ALLOW_RESERVED_PORTS = common dso_local global i32 0, align 4
@PR_ALLOW_RAW_SOCKETS = common dso_local global i32 0, align 4
@PR_ALLOW_READ_MSGBUF = common dso_local global i32 0, align 4
@PR_VNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_priv_check(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ucred*, %struct.ucred** %4, align 8
  %7 = call i32 @jailed(%struct.ucred* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %96 [
    i32 224, label %12
    i32 236, label %12
    i32 243, label %12
    i32 242, label %12
    i32 244, label %12
    i32 241, label %12
    i32 237, label %12
    i32 240, label %12
    i32 238, label %12
    i32 239, label %12
    i32 156, label %12
    i32 155, label %12
    i32 235, label %12
    i32 234, label %12
    i32 233, label %12
    i32 162, label %12
    i32 161, label %12
    i32 159, label %12
    i32 230, label %12
    i32 229, label %12
    i32 232, label %12
    i32 231, label %12
    i32 223, label %12
    i32 228, label %12
    i32 226, label %12
    i32 227, label %12
    i32 157, label %12
    i32 158, label %12
    i32 154, label %12
    i32 153, label %12
    i32 152, label %12
    i32 144, label %12
    i32 135, label %12
    i32 138, label %12
    i32 130, label %12
    i32 151, label %12
    i32 146, label %12
    i32 142, label %12
    i32 150, label %12
    i32 149, label %12
    i32 148, label %12
    i32 147, label %12
    i32 137, label %12
    i32 145, label %12
    i32 143, label %12
    i32 136, label %12
    i32 134, label %12
    i32 133, label %12
    i32 225, label %12
    i32 132, label %13
    i32 141, label %25
    i32 131, label %25
    i32 140, label %25
    i32 139, label %25
    i32 129, label %44
    i32 128, label %44
    i32 199, label %56
    i32 198, label %68
    i32 196, label %69
    i32 200, label %70
    i32 206, label %82
    i32 160, label %83
    i32 222, label %84
  ]

12:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  store i32 0, i32* %3, align 4
  br label %98

13:                                               ; preds = %10
  %14 = load %struct.ucred*, %struct.ucred** %4, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PR_ALLOW_CHFLAGS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %98

23:                                               ; preds = %13
  %24 = load i32, i32* @EPERM, align 4
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %10, %10, %10, %10
  %26 = load %struct.ucred*, %struct.ucred** %4, align 8
  %27 = getelementptr inbounds %struct.ucred, %struct.ucred* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PR_ALLOW_MOUNT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.ucred*, %struct.ucred** %4, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %98

42:                                               ; preds = %34, %25
  %43 = load i32, i32* @EPERM, align 4
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %10, %10
  %45 = load %struct.ucred*, %struct.ucred** %4, align 8
  %46 = getelementptr inbounds %struct.ucred, %struct.ucred* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PR_ALLOW_MLOCK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %98

54:                                               ; preds = %44
  %55 = load i32, i32* @EPERM, align 4
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %10
  %57 = load %struct.ucred*, %struct.ucred** %4, align 8
  %58 = getelementptr inbounds %struct.ucred, %struct.ucred* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PR_ALLOW_RESERVED_PORTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %98

66:                                               ; preds = %56
  %67 = load i32, i32* @EPERM, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %98

69:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %98

70:                                               ; preds = %10
  %71 = load %struct.ucred*, %struct.ucred** %4, align 8
  %72 = getelementptr inbounds %struct.ucred, %struct.ucred* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PR_ALLOW_RAW_SOCKETS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %98

80:                                               ; preds = %70
  %81 = load i32, i32* @EPERM, align 4
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %98

83:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %98

84:                                               ; preds = %10
  %85 = load %struct.ucred*, %struct.ucred** %4, align 8
  %86 = getelementptr inbounds %struct.ucred, %struct.ucred* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PR_ALLOW_READ_MSGBUF, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %98

94:                                               ; preds = %84
  %95 = load i32, i32* @EPERM, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %10
  %97 = load i32, i32* @EPERM, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %94, %93, %83, %82, %80, %79, %69, %68, %66, %65, %54, %53, %42, %41, %23, %22, %12, %9
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @jailed(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
