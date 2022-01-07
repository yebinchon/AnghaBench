; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_get_fingerprint.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_get_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint = type { i32, %struct.fingerprint_entry* }
%struct.fingerprint_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fingerprint*, i8*, i8*)* @get_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fingerprint(%struct.fingerprint* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.fingerprint*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fingerprint_entry*, align 8
  %13 = alloca %struct.fingerprint_entry*, align 8
  store %struct.fingerprint* %0, %struct.fingerprint** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.fingerprint_entry* @xcalloc(i32 %21, i32 8)
  store %struct.fingerprint_entry* %22, %struct.fingerprint_entry** %12, align 8
  %23 = load %struct.fingerprint*, %struct.fingerprint** %4, align 8
  %24 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %23, i32 0, i32 0
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @hashmap_init(i32* %24, i32* null, i32* null, i32 %25)
  %27 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %28 = load %struct.fingerprint*, %struct.fingerprint** %4, align 8
  %29 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %28, i32 0, i32 1
  store %struct.fingerprint_entry* %27, %struct.fingerprint_entry** %29, align 8
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %85, %3
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ule i8* %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35
  store i32 0, i32* %9, align 4
  br label %49

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @tolower(i8 signext %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %50, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %85

57:                                               ; preds = %49
  %58 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %59 = getelementptr inbounds %struct.fingerprint_entry, %struct.fingerprint_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @hashmap_entry_init(i32* %59, i32 %60)
  %62 = load %struct.fingerprint*, %struct.fingerprint** %4, align 8
  %63 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %62, i32 0, i32 0
  %64 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %65 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %66 = call %struct.fingerprint_entry* @hashmap_get_entry(i32* %63, %struct.fingerprint_entry* %64, %struct.fingerprint_entry* %65, i32* null)
  store %struct.fingerprint_entry* %66, %struct.fingerprint_entry** %13, align 8
  %67 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %13, align 8
  %68 = icmp ne %struct.fingerprint_entry* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %13, align 8
  %71 = getelementptr inbounds %struct.fingerprint_entry, %struct.fingerprint_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %84

74:                                               ; preds = %57
  %75 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %76 = getelementptr inbounds %struct.fingerprint_entry, %struct.fingerprint_entry* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.fingerprint*, %struct.fingerprint** %4, align 8
  %78 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %77, i32 0, i32 0
  %79 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %80 = getelementptr inbounds %struct.fingerprint_entry, %struct.fingerprint_entry* %79, i32 0, i32 1
  %81 = call i32 @hashmap_add(i32* %78, i32* %80)
  %82 = load %struct.fingerprint_entry*, %struct.fingerprint_entry** %12, align 8
  %83 = getelementptr inbounds %struct.fingerprint_entry, %struct.fingerprint_entry* %82, i32 1
  store %struct.fingerprint_entry* %83, %struct.fingerprint_entry** %12, align 8
  br label %84

84:                                               ; preds = %74, %69
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %8, align 4
  br label %31

89:                                               ; preds = %31
  ret void
}

declare dso_local %struct.fingerprint_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @hashmap_init(i32*, i32*, i32*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local %struct.fingerprint_entry* @hashmap_get_entry(i32*, %struct.fingerprint_entry*, %struct.fingerprint_entry*, i32*) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
