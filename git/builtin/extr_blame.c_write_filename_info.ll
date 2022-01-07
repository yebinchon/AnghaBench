; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_write_filename_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_write_filename_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { i32, %struct.TYPE_4__*, %struct.blame_origin* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"previous %s \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"filename \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_origin*)* @write_filename_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_filename_info(%struct.blame_origin* %0) #0 {
  %2 = alloca %struct.blame_origin*, align 8
  %3 = alloca %struct.blame_origin*, align 8
  store %struct.blame_origin* %0, %struct.blame_origin** %2, align 8
  %4 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %5 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %4, i32 0, i32 2
  %6 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %7 = icmp ne %struct.blame_origin* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %10 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %9, i32 0, i32 2
  %11 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  store %struct.blame_origin* %11, %struct.blame_origin** %3, align 8
  %12 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %13 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i8* @oid_to_hex(i32* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %20 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @write_name_quoted(i32 %21, i32 %22, i8 signext 10)
  br label %24

24:                                               ; preds = %8, %1
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %27 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @write_name_quoted(i32 %28, i32 %29, i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @write_name_quoted(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
