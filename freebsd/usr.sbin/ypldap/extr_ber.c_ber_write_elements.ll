; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_write_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_write_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32, i32*, i32*, i32 }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"write ber element of %zd bytes length\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ber_write_elements(%struct.ber* %0, %struct.ber_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ber*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %4, align 8
  store %struct.ber_element* %1, %struct.ber_element** %5, align 8
  %7 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %8 = call i64 @ber_calc_len(%struct.ber_element* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.ber*, %struct.ber** %4, align 8
  %12 = getelementptr inbounds %struct.ber, %struct.ber* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.ber*, %struct.ber** %4, align 8
  %17 = getelementptr inbounds %struct.ber, %struct.ber* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load %struct.ber*, %struct.ber** %4, align 8
  %22 = getelementptr inbounds %struct.ber, %struct.ber* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = icmp ugt i32* %20, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct.ber*, %struct.ber** %4, align 8
  %29 = getelementptr inbounds %struct.ber, %struct.ber* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load %struct.ber*, %struct.ber** %4, align 8
  %33 = getelementptr inbounds %struct.ber, %struct.ber* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %15, %2
  %35 = load %struct.ber*, %struct.ber** %4, align 8
  %36 = getelementptr inbounds %struct.ber, %struct.ber* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = call i32* @malloc(i64 %40)
  %42 = load %struct.ber*, %struct.ber** %4, align 8
  %43 = getelementptr inbounds %struct.ber, %struct.ber* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = icmp eq i32* %41, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %83

46:                                               ; preds = %39
  %47 = load %struct.ber*, %struct.ber** %4, align 8
  %48 = getelementptr inbounds %struct.ber, %struct.ber* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = ptrtoint i32* %51 to i32
  %53 = load %struct.ber*, %struct.ber** %4, align 8
  %54 = getelementptr inbounds %struct.ber, %struct.ber* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %46, %34
  %56 = load %struct.ber*, %struct.ber** %4, align 8
  %57 = getelementptr inbounds %struct.ber, %struct.ber* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ber*, %struct.ber** %4, align 8
  %60 = getelementptr inbounds %struct.ber, %struct.ber* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.ber*, %struct.ber** %4, align 8
  %62 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %63 = call i32 @ber_dump_element(%struct.ber* %61, %struct.ber_element* %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %83

66:                                               ; preds = %55
  %67 = load %struct.ber*, %struct.ber** %4, align 8
  %68 = getelementptr inbounds %struct.ber, %struct.ber* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.ber*, %struct.ber** %4, align 8
  %73 = getelementptr inbounds %struct.ber, %struct.ber* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ber*, %struct.ber** %4, align 8
  %76 = getelementptr inbounds %struct.ber, %struct.ber* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @write(i32 %74, i32* %77, i64 %78)
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %66
  %81 = load i64, i64* %6, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %71, %65, %45
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @ber_calc_len(%struct.ber_element*) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @ber_dump_element(%struct.ber*, %struct.ber_element*) #1

declare dso_local i32 @write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
