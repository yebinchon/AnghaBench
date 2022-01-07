; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_hash.c_ext2_half_md4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_hash.c_ext2_half_md4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @ext2_half_md4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_half_md4(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @FF(i64 %21, i64 %22, i64 %23, i64 %24, i64 %27, i32 3)
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @FF(i64 %29, i64 %30, i64 %31, i64 %32, i64 %35, i32 7)
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @FF(i64 %37, i64 %38, i64 %39, i64 %40, i64 %43, i32 11)
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @FF(i64 %45, i64 %46, i64 %47, i64 %48, i64 %51, i32 19)
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @FF(i64 %53, i64 %54, i64 %55, i64 %56, i64 %59, i32 3)
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 5
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @FF(i64 %61, i64 %62, i64 %63, i64 %64, i64 %67, i32 7)
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 6
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @FF(i64 %69, i64 %70, i64 %71, i64 %72, i64 %75, i32 11)
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64*, i64** %4, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 7
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @FF(i64 %77, i64 %78, i64 %79, i64 %80, i64 %83, i32 19)
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64*, i64** %4, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @GG(i64 %85, i64 %86, i64 %87, i64 %88, i64 %91, i32 3)
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64*, i64** %4, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @GG(i64 %93, i64 %94, i64 %95, i64 %96, i64 %99, i32 5)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64*, i64** %4, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 5
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @GG(i64 %101, i64 %102, i64 %103, i64 %104, i64 %107, i32 9)
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64*, i64** %4, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 7
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @GG(i64 %109, i64 %110, i64 %111, i64 %112, i64 %115, i32 13)
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64*, i64** %4, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @GG(i64 %117, i64 %118, i64 %119, i64 %120, i64 %123, i32 3)
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64*, i64** %4, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @GG(i64 %125, i64 %126, i64 %127, i64 %128, i64 %131, i32 5)
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64*, i64** %4, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 4
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @GG(i64 %133, i64 %134, i64 %135, i64 %136, i64 %139, i32 9)
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64*, i64** %4, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 6
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @GG(i64 %141, i64 %142, i64 %143, i64 %144, i64 %147, i32 13)
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 3
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @HH(i64 %149, i64 %150, i64 %151, i64 %152, i64 %155, i32 3)
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %5, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* %7, align 8
  %161 = load i64*, i64** %4, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 7
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @HH(i64 %157, i64 %158, i64 %159, i64 %160, i64 %163, i32 9)
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64*, i64** %4, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @HH(i64 %165, i64 %166, i64 %167, i64 %168, i64 %171, i32 11)
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %5, align 8
  %177 = load i64*, i64** %4, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 6
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @HH(i64 %173, i64 %174, i64 %175, i64 %176, i64 %179, i32 15)
  %181 = load i64, i64* %5, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64*, i64** %4, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @HH(i64 %181, i64 %182, i64 %183, i64 %184, i64 %187, i32 3)
  %189 = load i64, i64* %8, align 8
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load i64*, i64** %4, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 5
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @HH(i64 %189, i64 %190, i64 %191, i64 %192, i64 %195, i32 9)
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %5, align 8
  %200 = load i64, i64* %6, align 8
  %201 = load i64*, i64** %4, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @HH(i64 %197, i64 %198, i64 %199, i64 %200, i64 %203, i32 11)
  %205 = load i64, i64* %6, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* %5, align 8
  %209 = load i64*, i64** %4, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 4
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @HH(i64 %205, i64 %206, i64 %207, i64 %208, i64 %211, i32 15)
  %213 = load i64, i64* %5, align 8
  %214 = load i64*, i64** %3, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, %213
  store i64 %217, i64* %215, align 8
  %218 = load i64, i64* %6, align 8
  %219 = load i64*, i64** %3, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 1
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, %218
  store i64 %222, i64* %220, align 8
  %223 = load i64, i64* %7, align 8
  %224 = load i64*, i64** %3, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 2
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %223
  store i64 %227, i64* %225, align 8
  %228 = load i64, i64* %8, align 8
  %229 = load i64*, i64** %3, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 3
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, %228
  store i64 %232, i64* %230, align 8
  ret void
}

declare dso_local i32 @FF(i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @GG(i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @HH(i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
