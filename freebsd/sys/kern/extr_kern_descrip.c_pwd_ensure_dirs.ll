; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_pwd_ensure_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_pwd_ensure_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32*, i32* }

@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@rootvnode = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwd_ensure_dirs() #0 {
  %1 = alloca %struct.filedesc*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  store %struct.filedesc* %4, %struct.filedesc** %1, align 8
  %5 = load %struct.filedesc*, %struct.filedesc** %1, align 8
  %6 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %5)
  %7 = load %struct.filedesc*, %struct.filedesc** %1, align 8
  %8 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %0
  %12 = load i8*, i8** @rootvnode, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.filedesc*, %struct.filedesc** %1, align 8
  %15 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load i8*, i8** @rootvnode, align 8
  %17 = call i32 @vrefact(i8* %16)
  br label %18

18:                                               ; preds = %11, %0
  %19 = load %struct.filedesc*, %struct.filedesc** %1, align 8
  %20 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** @rootvnode, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.filedesc*, %struct.filedesc** %1, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load i8*, i8** @rootvnode, align 8
  %29 = call i32 @vrefact(i8* %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.filedesc*, %struct.filedesc** %1, align 8
  %32 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %31)
  ret void
}

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrefact(i8*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
