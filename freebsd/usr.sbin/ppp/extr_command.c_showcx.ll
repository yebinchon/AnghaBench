; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_showcx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_showcx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdtab = type { i32 }

@LOCAL_CX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"(c)\00", align 1
@LOCAL_CX_OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"(o)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cmdtab*)* @showcx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @showcx(%struct.cmdtab* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmdtab*, align 8
  store %struct.cmdtab* %0, %struct.cmdtab** %3, align 8
  %4 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %5 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LOCAL_CX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.cmdtab*, %struct.cmdtab** %3, align 8
  %13 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LOCAL_CX_OPT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %18, %10
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
