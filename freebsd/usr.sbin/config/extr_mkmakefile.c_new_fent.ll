; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_mkmakefile.c_new_fent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_mkmakefile.c_new_fent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@ftab = common dso_local global i32 0, align 4
@f_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_list* ()* @new_fent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_list* @new_fent() #0 {
  %1 = alloca %struct.file_list*, align 8
  %2 = call i64 @calloc(i32 1, i32 4)
  %3 = inttoptr i64 %2 to %struct.file_list*
  store %struct.file_list* %3, %struct.file_list** %1, align 8
  %4 = load %struct.file_list*, %struct.file_list** %1, align 8
  %5 = icmp eq %struct.file_list* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  %8 = call i32 @err(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.file_list*, %struct.file_list** %1, align 8
  %11 = load i32, i32* @f_next, align 4
  %12 = call i32 @STAILQ_INSERT_TAIL(i32* @ftab, %struct.file_list* %10, i32 %11)
  %13 = load %struct.file_list*, %struct.file_list** %1, align 8
  ret %struct.file_list* %13
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.file_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
