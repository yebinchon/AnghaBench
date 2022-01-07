; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_print_known_guid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_print_known_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid_table = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_known_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_known_guid() #0 {
  %1 = alloca %struct.uuid_table*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @efi_known_guid(%struct.uuid_table** %1)
  store i32 %4, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.uuid_table*, %struct.uuid_table** %1, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.uuid_table, %struct.uuid_table* %10, i64 %12
  %14 = getelementptr inbounds %struct.uuid_table, %struct.uuid_table* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.uuid_table*, %struct.uuid_table** %1, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.uuid_table, %struct.uuid_table* %16, i64 %18
  %20 = getelementptr inbounds %struct.uuid_table, %struct.uuid_table* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %21)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %5

26:                                               ; preds = %5
  ret void
}

declare dso_local i32 @efi_known_guid(%struct.uuid_table**) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
