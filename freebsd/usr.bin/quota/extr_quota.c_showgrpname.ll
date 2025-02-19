; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showgrpname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showgrpname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: unknown group\00", align 1
@GRPQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @showgrpname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @showgrpname(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.group*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.group* @getgrnam(i8* %5)
  store %struct.group* %6, %struct.group** %4, align 8
  %7 = load %struct.group*, %struct.group** %4, align 8
  %8 = icmp eq %struct.group* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 1, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @GRPQUOTA, align 4
  %14 = load %struct.group*, %struct.group** %4, align 8
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @showquotas(i32 %13, i32 %16, i8* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @showquotas(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
