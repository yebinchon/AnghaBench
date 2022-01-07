; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_do_push.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_do_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i64 }
%struct.string_list = type { i64 }
%struct.remote = type { %struct.refspec }
%struct.transport = type { %struct.string_list* }

@rs = common dso_local global %struct.refspec zeroinitializer, align 8
@TRANSPORT_PUSH_OPTIONS = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_ALL = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.string_list*, %struct.remote*)* @do_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_push(i8* %0, i32 %1, %struct.string_list* %2, %struct.remote* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca %struct.remote*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.refspec*, align 8
  %14 = alloca %struct.transport*, align 8
  %15 = alloca %struct.transport*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.string_list* %2, %struct.string_list** %7, align 8
  store %struct.remote* %3, %struct.remote** %8, align 8
  store %struct.refspec* @rs, %struct.refspec** %13, align 8
  %16 = load %struct.string_list*, %struct.string_list** %7, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @TRANSPORT_PUSH_OPTIONS, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.refspec*, %struct.refspec** %13, align 8
  %26 = getelementptr inbounds %struct.refspec, %struct.refspec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TRANSPORT_PUSH_ALL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load %struct.remote*, %struct.remote** %8, align 8
  %36 = getelementptr inbounds %struct.remote, %struct.remote* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.refspec, %struct.refspec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.remote*, %struct.remote** %8, align 8
  %42 = getelementptr inbounds %struct.remote, %struct.remote* %41, i32 0, i32 0
  store %struct.refspec* %42, %struct.refspec** %13, align 8
  br label %52

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TRANSPORT_PUSH_MIRROR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.remote*, %struct.remote** %8, align 8
  %50 = call i32 @setup_default_push_refspecs(%struct.remote* %49)
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %29, %24
  store i32 0, i32* %10, align 4
  %54 = load %struct.remote*, %struct.remote** %8, align 8
  %55 = call i32 @push_url_of_remote(%struct.remote* %54, i8*** %11)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load %struct.remote*, %struct.remote** %8, align 8
  %65 = load i8**, i8*** %11, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call %struct.transport* @transport_get(%struct.remote* %64, i8* %69)
  store %struct.transport* %70, %struct.transport** %14, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @TRANSPORT_PUSH_OPTIONS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.string_list*, %struct.string_list** %7, align 8
  %77 = load %struct.transport*, %struct.transport** %14, align 8
  %78 = getelementptr inbounds %struct.transport, %struct.transport* %77, i32 0, i32 0
  store %struct.string_list* %76, %struct.string_list** %78, align 8
  br label %79

79:                                               ; preds = %75, %63
  %80 = load %struct.transport*, %struct.transport** %14, align 8
  %81 = load %struct.refspec*, %struct.refspec** %13, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @push_with_options(%struct.transport* %80, %struct.refspec* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %59

92:                                               ; preds = %59
  br label %114

93:                                               ; preds = %53
  %94 = load %struct.remote*, %struct.remote** %8, align 8
  %95 = call %struct.transport* @transport_get(%struct.remote* %94, i8* null)
  store %struct.transport* %95, %struct.transport** %15, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @TRANSPORT_PUSH_OPTIONS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.string_list*, %struct.string_list** %7, align 8
  %102 = load %struct.transport*, %struct.transport** %15, align 8
  %103 = getelementptr inbounds %struct.transport, %struct.transport* %102, i32 0, i32 0
  store %struct.string_list* %101, %struct.string_list** %103, align 8
  br label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.transport*, %struct.transport** %15, align 8
  %106 = load %struct.refspec*, %struct.refspec** %13, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @push_with_options(%struct.transport* %105, %struct.refspec* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %104
  br label %114

114:                                              ; preds = %113, %92
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  ret i32 %119
}

declare dso_local i32 @setup_default_push_refspecs(%struct.remote*) #1

declare dso_local i32 @push_url_of_remote(%struct.remote*, i8***) #1

declare dso_local %struct.transport* @transport_get(%struct.remote*, i8*) #1

declare dso_local i64 @push_with_options(%struct.transport*, %struct.refspec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
