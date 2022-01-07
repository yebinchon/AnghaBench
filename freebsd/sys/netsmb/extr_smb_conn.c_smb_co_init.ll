; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32, i32, i32, i32*, i64, i32, i32 }

@SX_RECURSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"smblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_connobj*, i32, i8*, i8*)* @smb_co_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_co_init(%struct.smb_connobj* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.smb_connobj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %10 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %9, i32 0, i32 6
  %11 = call i32 @SLIST_INIT(i32* %10)
  %12 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %13 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %12, i32 0, i32 2
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @SX_RECURSE, align 4
  %16 = call i32 @sx_init_flags(i32* %13, i8* %14, i32 %15)
  %17 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %18 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %17, i32 0, i32 5
  %19 = call i32 @cv_init(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %21 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %23 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %26 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %28 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %30 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %29, i32 0, i32 2
  %31 = call i32 @sx_xlock(i32* %30)
  %32 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %33 = call i32 @smb_co_lock(%struct.smb_connobj* %32)
  %34 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %35 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %34, i32 0, i32 2
  %36 = call i32 @sx_unlock(i32* %35)
  ret void
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @sx_init_flags(i32*, i8*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @smb_co_lock(%struct.smb_connobj*) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
