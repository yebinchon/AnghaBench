; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_add_pack_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_add_pack_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { i32 }
%struct.packed_git = type { %struct.packed_git*, i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad pack filename: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Filename %s not found in packed_git\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pack_list* (i8*)* @add_pack_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pack_list* @add_pack_file(i8* %0) #0 {
  %2 = alloca %struct.pack_list*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.packed_git*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @the_repository, align 4
  %6 = call %struct.packed_git* @get_all_packs(i32 %5)
  store %struct.packed_git* %6, %struct.packed_git** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp slt i32 %8, 40
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %27, %13
  %15 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %16 = icmp ne %struct.packed_git* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strstr(i32 %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %26 = call %struct.pack_list* @add_pack(%struct.packed_git* %25)
  store %struct.pack_list* %26, %struct.pack_list** %2, align 8
  br label %34

27:                                               ; preds = %17
  %28 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %29 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %28, i32 0, i32 0
  %30 = load %struct.packed_git*, %struct.packed_git** %29, align 8
  store %struct.packed_git* %30, %struct.packed_git** %4, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.pack_list*, %struct.pack_list** %2, align 8
  ret %struct.pack_list* %35
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local %struct.pack_list* @add_pack(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
