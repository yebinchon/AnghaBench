; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_read_idx_option.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_read_idx_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_idx_option = type { i32 }
%struct.packed_git = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cannot open existing pack file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot open existing pack idx file for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pack_idx_option*, i8*)* @read_idx_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_idx_option(%struct.pack_idx_option* %0, i8* %1) #0 {
  %3 = alloca %struct.pack_idx_option*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.packed_git*, align 8
  store %struct.pack_idx_option* %0, %struct.pack_idx_option** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = call %struct.packed_git* @add_packed_git(i8* %6, i32 %8, i32 1)
  store %struct.packed_git* %9, %struct.packed_git** %5, align 8
  %10 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %11 = icmp ne %struct.packed_git* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @die(i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %18 = call i64 @open_pack_index(%struct.packed_git* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @die(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %26 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pack_idx_option*, %struct.pack_idx_option** %3, align 8
  %29 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pack_idx_option*, %struct.pack_idx_option** %3, align 8
  %31 = getelementptr inbounds %struct.pack_idx_option, %struct.pack_idx_option* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %36 = load %struct.pack_idx_option*, %struct.pack_idx_option** %3, align 8
  %37 = call i32 @read_v2_anomalous_offsets(%struct.packed_git* %35, %struct.pack_idx_option* %36)
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %40 = call i32 @close_pack_index(%struct.packed_git* %39)
  %41 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %42 = call i32 @free(%struct.packed_git* %41)
  ret void
}

declare dso_local %struct.packed_git* @add_packed_git(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @read_v2_anomalous_offsets(%struct.packed_git*, %struct.pack_idx_option*) #1

declare dso_local i32 @close_pack_index(%struct.packed_git*) #1

declare dso_local i32 @free(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
